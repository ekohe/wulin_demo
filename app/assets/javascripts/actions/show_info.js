WulinMaster.actions.showInfo = $.extend({}, WulinMaster.actions.BaseAction, {
  name: 'show_info',

  handler: function() {
    var grid = this.getGrid();
    var rows = grid.getSelectedRows();
    if(rows.length == 0) return false;
    var record = grid.getData()[rows[0]];
    alert("name: " + record.name + "\n" + "age: " + record.age);
  }
});

WulinMaster.ActionManager.register(WulinMaster.actions.showInfo);