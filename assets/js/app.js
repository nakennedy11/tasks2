// We need to import the CSS so that webpack will load it.
// The MiniCssExtractPlugin is used to separate it out into
// its own CSS file.
// webpack automatically bundles all modules in your
// entry points. Those entry points can be configured
// in "webpack.config.js".
//
// Import dependencies
//

import css from "../css/app.scss"
import "phoenix_html"
// Import local files
//
// Local files can be imported directly using relative paths, for example:
// import socket from "./socket"
import jQuery from 'jquery';
window.jQuery = window.$ = jQuery;

import "bootstrap";


$(function () {

  $('#start').click((ev) => {
    let time = new Date().toUTCString();//.toString("hh:mm:ss tt");
    window.start = time;
  })

  $('#stop').click((ev) => {
    let stop = new Date().toUTCString();
    let task = $(ev.target).data('task-id');

    let text = JSON.stringify({
      time: {
        task: task,
        start: start,
        stop: stop
      }
    });
    console.log("Time being sent through ajax: " + text);
    //
    // $.ajax(time_path, {
    //   method: "post",
    //   dataType: "json",
    //   contentType: "application/jason; charset=UTF-8",
    //   data: text
    // });
    $.ajax(time_path, {
     method: "post",
     dataType: "json",
     contentType: "application/json; charset=UTF-8",
     data: text,
     success: function (data) {

   // let correspondingDate = $(".tb-show[data-tb-id=" + timeid + "]");
   // $(wrappingRow).hide();
   // $(correspondingDate).show();

}
  });
  });
})
