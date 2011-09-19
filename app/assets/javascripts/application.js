//= require jquery
//= require jquery_ujs
//= require_self
//= require_tree .



$(function() {
  $("#test_results th a, #test_results .pagination a").live("click", function() {
    $.getScript(this.href);
    return false;
  });
});

