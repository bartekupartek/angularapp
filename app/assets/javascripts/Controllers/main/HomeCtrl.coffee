@bookstore.controller 'HomeCtrl', ['$scope', ($scope) ->
  $scope.data =
    posts: [{title: 'My cat', description: 'Lorem ipsum'}, {title: 'Blablabla', description: 'Lorem ipsum'}]
]
