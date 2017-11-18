/**
 * main.js
 */
$(function(){
	
	change_layout("sidebar-collapse");
	
});

function change_layout(cls) {
	  $("body").toggleClass(cls);
	  $.AdminLTE.layout.fixSidebar();  
}