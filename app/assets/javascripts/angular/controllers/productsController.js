demoApp.controller('productsController', ['$scope', '$log', '$filter', 'Product', 'Purchase', function($scope, $log, $filter, Product, Purchase) {
  $scope.purchaseButtonText = "Purchase!";
  $scope.submitted = false;

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
    });
  };
}]);
