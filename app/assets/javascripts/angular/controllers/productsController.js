demoApp.controller('productsController', ['$scope', '$log', 'Product', function($scope, $log, Product) {
  $scope.purchaseButtonText = "Purchase!";
  $scope.submitted = false;

  Product.query(function(products){
    $scope.products = products;
  });

  $scope.purchase = function(products){
    $scope.purchaseButtonText = "Processing...";
    $scope.submitted = true;
  };
}]);
