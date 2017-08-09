demoApp.controller('productsController', ['$scope', '$log', 'Product', function($scope, $log, Product) {
  Product.query(function(products){
    $scope.products = products;
  });
}]);
