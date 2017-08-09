demoApp.factory('Product', ['$resource', function($resource){
  return $resource("/products.json", {id: "@id"}, {
  });
}]);
