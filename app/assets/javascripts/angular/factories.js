demoApp.factory('Product', ['$resource', function($resource){
  return $resource("/products.json", {id: "@id"}, {
  });
}]);

demoApp.factory('Purchase', ['$resource', function($resource){
  return $resource("/purchases.json", {id: "@id"}, {
  });
}]);

demoApp.factory('PurchasedProduct', ['$resource', function($resource){
  return $resource("/purchased_products.json", {id: "@id"}, {
  });
}]);
