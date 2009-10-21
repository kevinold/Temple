// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

$(function() {
  // Toggles the services overlay for the header
  $("a#services-tab").toggle(
      function () {
        $("#services-overlay").animate({top: "0px"}, 400);
        $(".down").addClass("up");
      },
      function () {
        $("#services-overlay").animate({top: "-175px"}, 400);
        $(".down").removeClass("up");
  });
});

