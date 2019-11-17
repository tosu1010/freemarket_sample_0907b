// bar_name（ナビゲーションバーの項目名）のactive遷移

$(document).ready(function(){

 let path = location.pathname;

  if(path === '/signup/step1') {
    $('.status').eq(0).addClass('active');
    $('.bar_name').eq(0).addClass('active');
  }
  
  if(path === '/signup/step2') {
    if ($('#user_nickname').hasClass('error') ||
     $('#user_email').hasClass('error')||
     $('#user_password').hasClass('error') ||
     $('#user_password_confirmation').hasClass('error') ||
     $('#user_last_name').hasClass('error') ||
     $('#user_first_name').hasClass('error') ||
     $('#user_last_name_kana').hasClass('error') ||
     $('#user_first_name_kana').hasClass('error') ||
     $('#user_birth_year').hasClass('error') ||
     $('#user_birth_month').hasClass('error') ||
     $('#user_birth_day').hasClass('error')) {
      $('.status').eq(0).addClass('active');
      $('.bar_name').eq(0).addClass('active');
    } else {
      $('.status').eq(0).addClass('active');
      $('.status').eq(1).addClass('active');
      $('.bar_name').eq(0).removeClass('active');
      $('.bar_name').eq(1).toggleClass('bar_name_before');
      $('.bar_name').eq(0).toggleClass('bar_name_after');
      $('.bar_name').eq(0).removeClass('bar_name');
      $('.bar_name_before').eq(0).addClass('active');
    }
  }

  if(path === '/signup/step3') {
    if ($('#user_phone_number').hasClass('error')) {
      $('.status').eq(0).addClass('active');
      $('.status').eq(1).addClass('active');
      $('.bar_name').eq(0).removeClass('active');
      $('.bar_name').eq(1).toggleClass('bar_name_before');
      $('.bar_name').eq(0).toggleClass('bar_name_after');
      $('.bar_name').eq(0).removeClass('bar_name');
      $('.bar_name_before').eq(0).addClass('active');
    } else {
      $('.status').eq(0).addClass('active');
      $('.status').eq(1).addClass('active');
      $('.status').eq(2).addClass('active');
      $('.bar_name').eq(1).removeClass('active');
      $('.bar_name').eq(1).toggleClass('bar_name_before');
      $('.bar_name').eq(2).toggleClass('bar_name_before');
      $('.bar_name').eq(0).toggleClass('bar_name_after');
      $('.bar_name').eq(1).toggleClass('bar_name_after');
      $('.bar_name').eq(1).removeClass('bar_name');
      $('.bar_name_before').eq(1).addClass('active');
    }
  }

  if(path === '/signup/step4') {
    if ($('#address_last_name').hasClass('error') ||
     $('#address_first_name').hasClass('error')||
     $('#address_last_name_kana').hasClass('error') ||
     $('#address_first_name_kana').hasClass('error')||
     $('#address_postal_code').hasClass('error')||
     $('#address_prefecture_id').hasClass('error')||
     $('#address_city').hasClass('error')||
     $('#address_number').hasClass('error')) {
      $('.status').eq(0).addClass('active');
      $('.status').eq(1).addClass('active');
      $('.status').eq(2).addClass('active');
      $('.bar_name').eq(1).removeClass('active');
      $('.bar_name').eq(1).toggleClass('bar_name_before');
      $('.bar_name').eq(2).toggleClass('bar_name_before');
      $('.bar_name').eq(0).toggleClass('bar_name_after');
      $('.bar_name').eq(1).toggleClass('bar_name_after');
      $('.bar_name').eq(1).removeClass('bar_name');
      $('.bar_name_before').eq(1).addClass('active');
    } else {
      $('.status').eq(0).addClass('active');
      $('.status').eq(1).addClass('active');
      $('.status').eq(2).addClass('active');
      $('.status').eq(3).addClass('active');
      $('.bar_name').eq(2).removeClass('active');
      $('.bar_name').eq(1).toggleClass('bar_name_before');
      $('.bar_name').eq(2).toggleClass('bar_name_before');
      $('.bar_name').eq(3).toggleClass('bar_name_before');
      $('.bar_name').eq(0).toggleClass('bar_name_after');
      $('.bar_name').eq(1).toggleClass('bar_name_after');
      $('.bar_name').eq(2).toggleClass('bar_name_after');
      $('.bar_name').eq(2).removeClass('bar_name');
      $('.bar_name_before').eq(2).addClass('active');
    }
  }

  if(path === '/signup/step5') {
      $('.status').eq(0).addClass('active');
      $('.status').eq(1).addClass('active');
      $('.status').eq(2).addClass('active');
      $('.status').eq(3).addClass('active');
      $('.status').eq(4).addClass('active');
      $('.bar_name').eq(3).removeClass('active');
      $('.bar_name').eq(1).toggleClass('bar_name_before');
      $('.bar_name').eq(2).toggleClass('bar_name_before');
      $('.bar_name').eq(3).toggleClass('bar_name_before');
      $('.bar_name').eq(4).toggleClass('bar_name_before');
      $('.bar_name').eq(0).toggleClass('bar_name_after');
      $('.bar_name').eq(1).toggleClass('bar_name_after');
      $('.bar_name').eq(2).toggleClass('bar_name_after');
      $('.bar_name').eq(3).toggleClass('bar_name_after');
      $('.bar_name').eq(3).removeClass('bar_name');
      $('.bar_name_before').eq(3).addClass('active');
    }
});

// --------------------------------------------------------

// クレジットカードの裏面（セキュリティコード）の説明(classの追加または削除)
// ページでクラスの統一ができていないため、下記で2パターン作成

$(document).ready(function(){
  $('.seq-card').hide();
  $('div .image').hide();
});

$(function() {
  $('.contents__field__reason').click(function() {
    if($('.credit-seq_before').hasClass('credit-seq_before')) {
      $('.credit-seq_before').toggleClass('credit-seq_before').toggleClass('credit-seq_after');
      $('.seq-card').show();
      $('div .image').show();
    } else {
      $('.credit-seq_after').toggleClass('credit-seq_after').toggleClass('credit-seq_before');
      $('.seq-card').hide();
      $('div .image').hide();
    }
  });
});

$(function() {
  $('.contents-field__reason').click(function() {
    if($('.credit-seq_before').hasClass('credit-seq_before')) {
      $('.credit-seq_before').toggleClass('credit-seq_before').toggleClass('credit-seq_after');
      $('.seq-card').show();
      $('div .image').show();
    } else {
      $('.credit-seq_after').toggleClass('credit-seq_after').toggleClass('credit-seq_before');
      $('.seq-card').hide();
      $('div .image').hide();
    }
  });
});

// --------------------------------------------------------

  // reCAPTCHA（私はロボットではありません）の実装

/**
 * @return object
 * @see https://developers.google.com/recaptcha/docs/verify
 */
function checkReCaptcha(){
  $url = "https://www.google.com/recaptcha/api/siteverify";
  $request = implode("&", [
      "secret=".urlencode("6LcJNrkUAAAAACnXDvO3Dylttta_Gj3F5qe4iRWa"),
      "response=".urlencode($_POST["g-recaptcha-response"])
  ]);
  $ch = curl_init($url);
  curl_setopt($ch, CURLOPT_POST, true);
  curl_setopt($ch, CURLOPT_POSTFIELDS, $request);
  curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
  $response = curl_exec($ch);
  curl_close($ch);
  return json_decode($response);
}