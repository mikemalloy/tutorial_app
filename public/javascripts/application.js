$(function() {
  $("#test_results th a, #test_results .pagination a").live("click", function() {
    $.getScript(this.href);
    return false;
  });
});