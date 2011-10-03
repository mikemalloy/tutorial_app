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

$(document).ready(function(){	 
	$("#manual_entries").hide();	 
	$('#show_hide').click(function(){
		$("#manual_entries").slideToggle();
		return false;
	});
	 
});