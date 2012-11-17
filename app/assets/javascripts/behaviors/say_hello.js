WulinMaster.behaviors.sayHello = $.extend({}, WulinMaster.behaviors.BaseBehavior, {
  event: "onDataLoaded",

  subscribe: function(target) {
    this.grid = target;
    var self = this;
    target.loader[this.event].subscribe(function(){ self.handler() });
  },

  handler: function() {
    displayNewNotification("Hello RubyConfChina 2012!");
  }

});

WulinMaster.BehaviorManager.register("say_hello", WulinMaster.behaviors.sayHello);