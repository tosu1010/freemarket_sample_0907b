(function(){
  //日付範囲決定
  function calcDays(){
    $('.day').empty();
    let y = $('.year').val();
    let m = $('.month').val();

    if (m == "" || y == "") {
      var last = 31;
    } else if (m == 2 && ((y % 400 == 0) || ((y % 4 == 0) && (y % 100 != 0)))) {
      var last = 29;
    } else {
      var last = new Array(31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31)[m-1];
    }

    $('.day').append('<option value="">--</option>');
    for (let i = 1; i <= last; i++) {
      if (d == i) {
        $('.day').append('<option value="' + i + '" selected>' + i + '</option>');
      } else {
        $('.day').append('<option value="' + i + '">' + i + '</option>');
      }
    }
  }
  
  let now = new Date();
  let year = now.getFullYear();
  let d = 0;
  $(function(){
    for (let i = year; i >= 1900; i--) {
      $('.year').append('<option value="' + i + '">' + i + '</option>');
    }
    for (let i = 1; i <= 12; i++) {
      $('.month').append('<option value="' + i + '">' + i + '</option>');
    }
    for (let i = 1; i <= 31; i++) {
      $('.day').append('<option value="' + i + '">' + i + '</option>');
    }

    $('.day').change(function(){
      d = $(this).val();
    });
    $('.year').change(calcDays);
    $('.month').change(calcDays);
  });
})();