// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
<<<<<<< HEAD
$(document).ready(function(){
  $("#button1").click(function(){
    $("#p1").hide();
  });
   $('.some_trigger').hover(function(){
    $('#button1').trigger('click');
  });
   $('.some_trigger1').hover(function(){
    $('#linkto').trigger('click');
  });
   
});
=======
//= require bootstrap-sprockets
>>>>>>> db1fec29201f65c8d567e28c6b7522380fee3caa
