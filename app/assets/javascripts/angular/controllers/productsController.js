demoApp.controller('productsController', ['$scope', '$log', '$filter', 'Product', 'Purchase', function($scope, $log, $filter, Product, Purchase) {
  // reset purchase button on page load
  function resetButtons(){
    $scope.purchaseButtonText = "Purchase!";
    $scope.submitted = false;
  };
  resetButtons();

  // get all products
  Product.query(function(products){
    $scope.products = products;
  });

  // submit purchase to rails purchases#create
  $scope.purchase = function(items){
    $scope.purchaseButtonText = "Processing...";
    $scope.submitted = true;

    items = $filter('filter')(items, {quantity: '!!'});

    Purchase.save({
      products: items
    }, function(response){
      $('.purchase_section').html('<p>Thanks for your purchase!</p>');
    }, function(err){
      $scope.err = "There's been an error"
      resetButtons();
    });
  };
}]);
