// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

// Accordion Menu *****************************************
$("html").addClass("js");
$(function() {
  $("#side").accordion({
    event: "hover", 
    interval: 400,
    initShow : "#current"
  });
  $("#main").accordion({
      obj: "div", 
      wrapper: "div", 
      el: ".h", 
      head: "h4", 
      next: "div", 
      initShow : "div.outer:first",
      event : "hover",
      collapsible : false
    });
  $("html").removeClass("js");
});
// End Accordion Menu *************************************


// Expand Hide/Show ***************************************
$(function() {
   $("#content h3.expand").toggler();
   $("#cont div.demo").expandAll({trigger: "h3.expand", ref: "h3.expand"});
   $("#cont div.other").expandAll({
     expTxt : "[Show]", 
     cllpsTxt : "[Hide]",
     ref : "ol.collapse",
     showMethod : "show",
     hideMethod : "hide",
     state : 'show', // If 'hidden', the collapsible elements are hidden by default, else they are expanded by default 
     initTxt : 'hide', // 'show' - if the initial text of the switch is for expanding, 'hide' - if the initial text of the switch is for collapsing
  });  
});
// End Expand Hide/Show ***********************************





