var app=angular.module('myapp',[])
app.controller('NameController',function($scope){
	$scope.firstname=""
		$scope.lastname=""
			$scope.concatName=function(){
		console.log('entering function concatname()')
		$scope.result=$scope.firstname + $scope.lastname
	}
})