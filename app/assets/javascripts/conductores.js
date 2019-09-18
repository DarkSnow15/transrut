//= require datetimepicker/bootstrap-datetimepicker.js
//= require datetimepicker/locales/bootstrap-datetimepicker.es.js

$(function () {

  $('.form_datetime').datetimepicker({
    autoclose: true,
    todayBtn: true,
    pickerPosition: "bottom-left",
    format: 'dd-mm-yyyy hh:ii'
  });

});
