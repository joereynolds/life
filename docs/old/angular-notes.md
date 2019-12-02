# Questions

- At what point do you move something from Angular to server-side, i.e. for speeds sake?
- When should we use angular stuff over plain HTML5, i.e. ng-pattern or pattern?

# Notes

## Angular

- Don't inject scope, use `this` to stop pollution.
- Use 'controller as' syntax to stop polluting namespaces for nested controllers
- If you're using controller as syntax, you need to use `this`, not `$scope`
- You can see what variables a scope is watching by settings a breakpoint on the
scope and looking for the $$watchers property in the $scope object. $scope has an array
of $$watchers available to inspect
- ng-controllers should be used for initialisation. services and factories should be used for logic.
- ng-if creates a new child scope, be weary of this.
- services should be used for logic, not controllers
- If you want to inject a controller to test, remember to use the `$controller` service to get a controller by name
- If you're running a spy, you'll probably want to use `and.callThrough()` so that the function still functions.
- If the data doesn't need to be dynamic, you can use one-time binding. Add '::' to the start of your angular expression
i.e.
Instead of {{person}} do {{::person}}
- You can also use 'track by' to speed up angular, look it up.
- If you want to use templates, look into ng-include and templateCache.put()
- If you want to create components, use `directives`
- Use pushstate if you want to make urls beautiful. This is in the $locationProviders provider.
- 

## JS

- Named functions are hoisted to the top
