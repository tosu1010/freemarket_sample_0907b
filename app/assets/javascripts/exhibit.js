$(document).on('turbolinks:load', function() {
    
  /////出品画像表示/////
  /////1:1/////
    let exhibit_photo1 =
      `
      <div class="img-view">
        <div class="img-field">
          <div class="img-field-upper">
            <img class="preview">
          </div>
          <div class="img-field-bottom">
            <label class="change">
              <div class="edit-btn">編集</div>
              <button id="clear">削除</button>
            </label>
          </div>
        </div>
      </div>
      `
  
  /////select_1/////
    let select_1 =
    `
    <label class="select_1">
      <input class="select_img" type="file" id="select_img"/>
      <div class="content__box__dropbox">
        <div class="content__box__dropbox__form">
          ドラッグアンドドロップ
          <br>
          またはクリックしてファイルをアップロード
        </div>
      </div>
    </label>
    `
  
  /////2:1/////
    let exhibit_photo2 =
    `
    <div class="img-view2">
      <div class="img-field">
        <div class="img-field-upper">
          <img class="preview2">
        </div>
        <div class="img-field-bottom">
          <label class="change">
            <div class="edit-btn">編集</div>
            <button id="clear2">削除</button>
          </label>
        </div>
      </div>
    </div>
    `
  
  /////select_2/////
    let select_2 =
    `
    <label class="select_2">
      <input class="select_img_2" id="select_img_2" type="file" name="image"/>
      <div class= "content__box__dropbox__2">
        <div class= "content__box__dropbox__form">
          ドラッグアンドドロップ
          <br>
          またはクリックしてファイルをアップロード
        </div>
      </div>
    </label>
    `
  
  /////3:1/////
    let exhibit_photo3 =
    `
    <div class="img-view3">
      <div class="img-field">
        <div class="img-field-upper">
          <img class="preview3">
        </div>
        <div class="img-field-bottom">
          <label class="change">
            <div class="edit-btn">編集</div>
            <button id="clear3">削除</button>
          </label>
        </div>
      </div>
    </div>
    `
  
  /////select_3/////
    let select_3 =
    `
    <label class="select_3">
      <input class="select_img_3" id="select_img_3" type="file" name="image"/>
      <div class= "content__box__dropbox__3">
        <div class= "content__box__dropbox__form">
          ドラッグアンドドロップ
          <br>
          またはクリックしてファイルをアップロード
        </div>
      </div>
    </label>
    `
  
  /////4:1/////
    let exhibit_photo4 =
    `
    <div class="img-view4">
      <div class="img-field">
        <div class="img-field-upper">
          <img class="preview4">
        </div>
        <div class="img-field-bottom">
          <label class="change">
            <input class="change_select_img" type="file" id="change_select_img"/>
            <div class="edit-btn">編集</div>
            <button id="clear4">削除</button>
          </label>
        </div>
      </div>
    </div>
    `
  
  /////select_4/////
    let select_4 =
    `
    <label class="select_4">
      <input class="select_img_4" id="select_img_4" type="file" name="image"/>
      <div class= "content__box__dropbox__4">
        <div class= "content__box__dropbox__form">
          ドラッグアンドドロップ
          <br>
          またはクリックしてファイルをアップロード
        </div>
      </div>
    </label>
    `
  
  /////5:1/////
    let exhibit_photo5 =
    `
    <div class="img-view5">
      <div class="img-field">
        <div class="img-field-upper">
          <img class="preview5">
        </div>
        <div class="img-field-bottom">
          <label class="change">
            <div class="edit-btn">編集</div>
            <button id="clear5">削除</button>
            </label>
        </div>
      </div>
    </div>
    `
  
    let exhibit_photo5_2 =
    `
    <div class="content__box__select-img-2">
      <label class="select_6">
        <input class="select_img_6" id="select_img_6" type="file" name="image">
        <div class="content__box__dropbox__6">
          <div class="content__box__dropbox__form">
            ドラッグアンドドロップ
            <br>
            またはクリックしてファイルをアップロード
          </div>
        </div>
      </label>
    </div>
    `
  
  
  /////select_5/////
    let select_5 =
    `
    <label class="select_5">
      <input class="select_img_5" id="select_img_5" type="file" name="image"/>
      <div class= "content__box__dropbox__5">
        <div class= "content__box__dropbox__form">
          ドラッグアンドドロップ
          <br>
          またはクリックしてファイルをアップロード
        </div>
      </div>
    </label>
    `
    
  /////6:1/////
    let exhibit_photo6 =
    `
    <div class="img-view6">
      <div class="img-field">
        <div class="img-field-upper">
          <img class="preview6">
        </div>
        <div class="img-field-bottom">
          <label class="change">
            <div class="edit-btn">編集</div>
            <button id="clear6">削除</button>
          </label>
        </div>
      </div>
    </div>
    `
  
  /////select_6/////
    let select_6 =
    `
    <label class="select_6">
      <input class="select_img_6" id="select_img_6" type="file" name="image"/>
      <div class= "content__box__dropbox__6">
        <div class= "content__box__dropbox__form">
          ドラッグアンドドロップ
          <br>
          またはクリックしてファイルをアップロード
        </div>
      </div>
    </label>
    `
  
  /////7:1/////
    let exhibit_photo7 =
    `
    <div class="img-view7">
      <div class="img-field">
        <div class="img-field-upper">
          <img class="preview7">
        </div>
        <div class="img-field-bottom">
          <label class="change">
            <div class="edit-btn">編集</div>
            <button id="clear7">削除</button>
          </label>
        </div>
      </div>
    </div>
    `
  
  /////select_7/////
    let select_7 =
    `
    <label class="select_7">
      <input class="select_img_7" id="select_img_7" type="file" name="image"/>
      <div class= "content__box__dropbox__7">
        <div class= "content__box__dropbox__form">
          ドラッグアンドドロップ
          <br>
          またはクリックしてファイルをアップロード
        </div>
      </div>
    </label>
    `
  
  /////8:1/////
    let exhibit_photo8 =
    `
    <div class="img-view8">
      <div class="img-field">
        <div class="img-field-upper">
          <img class="preview8">
        </div>
        <div class="img-field-bottom">
          <label class="change">
            <div class="edit-btn">編集</div>
            <button id="clear8">削除</button>
          </label>
        </div>
      </div>
    </div>
    `
  
  /////select_8/////
    let select_8 =
    `
    <label class="select_8">
      <input class="select_img_8" id="select_img_8" type="file" name="image"/>
      <div class= "content__box__dropbox__8">
        <div class= "content__box__dropbox__form">
          ドラッグアンドドロップ
          <br>
          またはクリックしてファイルをアップロード
        </div>
      </div>
    </label>
    `
  
  /////9:1/////
    let exhibit_photo9 =
    `
    <div class="img-view9">
      <div class="img-field">
        <div class="img-field-upper">
          <img class="preview9">
        </div>
        <div class="img-field-bottom">
          <label class="change">
            <div class="edit-btn">編集</div>
            <button id="clear9">削除</button>
          </label>
        </div>
      </div>
    </div>
    `
  
  /////select_9/////
    let select_9 =
    `
    <label class="select_9">
      <input class="select_img_9" id="select_img_9" type="file" name="image"/>
      <div class= "content__box__dropbox__9">
        <div class= "content__box__dropbox__form">
          ドラッグアンドドロップ
          <br>
          またはクリックしてファイルをアップロード
        </div>
      </div>
    </label>
    `
  
  /////10/////
    let exhibit_photo10 =
    `
    <div class="img-view10">
      <div class="img-field">
        <div class="img-field-upper">
          <img class="preview10">
        </div>
        <div class="img-field-bottom">
          <label class="change">
            <div class="edit-btn">編集</div>
            <button id="clear10">削除</button>
          </label>
        </div>
      </div>
    </div>
    `
  
  /////select_10/////
    let select_10 =
    `
    <label class="select_10">
      <input class="select_img_10" id="select_img_10" type="file" name="image"/>
      <div class= "content__box__dropbox__10">
        <div class= "content__box__dropbox__form">
          ドラッグアンドドロップ
          <br>
          またはクリックしてファイルをアップロード
        </div>
      </div>
    </label>
    `
  
  
  ////カテゴリー２/////
    $(document).on("change", ".select", function(){
  
      let category2= 
      // 選択肢は仮置き。
      `
      <div class="content__box__select-category2">
        <div class="content__box__select-category__box">
          <fields_for @category do |f|>
            <select :name class="select2">
              <option>--
              <option>トップス
              <option>ジャケット/アウター
              <option>パンツ
              <option>スカート
              <option>ワンピース
              <option>靴
              <option>ルームウェア/パジャマ
              <option>帽子
              <option>バッグ
              <option>アクセサリー
              <option>ヘアアクセサリー
              <option>小物
              <option>時計
              <option>ウィッグ/エクステ
              <option>浴衣/水着
              <option>スーツ/フォーマル/ドレス
              <option>マタニティ
              <option>
            </select>
          <div class="icon">
            <i class="fa fa-angle-down"></i>
          </icon>
        </div>
      </div>
    `
  
      $(".content__box__select-category").append(category2);
      $(document).off("change", ".select");
    });
  
  /////カテゴリー３/////
    $(document).on("change", ".select2", function(){
  
      let category3= 
      // 選択肢は仮置き。
      `
      <div class="content__box__select-category3">
        <div class="content__box__select-category__box">
          <fields_for @category do |f|>
            <select :name class="select3">
              <option>-- 
              <option>ア
              <option>イ
              <option>ウ
            </select>
          <div class="icon">
            <i class="fa fa-angle-down"></i>
          </icon>
        </div>
      </div>
    `
  
      $(".content__box__select-category2").append(category3);
      $(document).off("change", ".select2");
    });

  /////サイズとブラント追加/////
    $(document).on("change", ".select3", function(){
      let size =
      `
      <div class="content__box-middle">
        <div class="content__box__title">
          サイズ
          <div class="form_require">
            必須
          </div>
        </div>
        <div class="content__box__select">
          <div class="content__box__select__box">
            <fields_for @category do |f|>
              <select :name class="select6">
                <option>--
                <option>S
                <option>M
                <option>L
              </select>
            <div class="icon">
              <i class="fa fa-angle-down"></i>
            </div>
          </div>
        </div>
      </div>

      <div class="content__box-middle">
      <div class="content__box__title">
        ブランド
        <div class="form_require", id="opt">
          任意
        </div>
      </div>
      <div class="content__box__select">
        <div class="content__box__select__box">
          <fields_for @category do |f|>

            <input :name class="input-form">
            </input>

        </div>
      </div>
    </div>

  `

    $(".content__box__select-category3").append(size);
    $(document).off("change", ".select3");
  });

  
  /////発送方法/////
  $(document).on("change", ".select4", function(){

    let shipping=
    `
    <div class="content__box-middle">
      <div class="content__box__title">
        配送方法
        <div class="form_require">
          必須
        </div>
      </div>
      <div class="content__box__select">
        <div class="content__box__select__box">
          <fields_for @category do |f|>
            <select :name class="select5">
              <option>--
              <option>ア
              <option>イ
              <option>ウ
            </select>
          <div class="icon">
            <i class="fa fa-angle-down"></i>
          </div>
        </div>
      </div>
    </div>
  `
        
    $(".content__box1").append(shipping);
    $(document).off("change", ".select4");
  });
  
  /////消費税計算/////
  $(document).on("keyup", ".input-form", function(){
    let input_price = $("#price").val()
    fee = Math.floor(parseInt(input_price) * 10/100);
    profit = input_price - fee

      if (9999999 >= input_price && input_price >= 300){
        $(".total-price").empty();
          if (!input_price){
            $("#total-price").val("");
            return false;
          }
          else {
          };

          $("#sales-fee").val("¥" + fee);
          /////販売利益に表示させる/////
          $("#total-price").val("¥" + profit);
        }
      else 
      { 
        /////価格に入力された値が削除されて300以下になった場合に-を表示させる/////
        if ($(".total-price").is(":visible")){
          $("#total-price").val("-")
          $("#sales-fee").val("-")
        }
        else {
          $("#toatl-price").replace("なし")
          
        }
      }
  });
  
  
  /////1:1/////
  $(document).on('change', '#select_img', function (e) {
    let reader = new FileReader();
    reader.onload = function (e) {
      $("label.select_1").replaceWith(exhibit_photo1);
      $(".img-view").after(select_2);
      $(".preview").attr('src', e.target.result);
    }
    reader.readAsDataURL(e.target.files[0]);  
  });

  /////2:1/////
  $(document).on('change', '#select_img_2', function (e) {
    let reader = new FileReader();
    reader.onload = function (e) {
      $("label.select_2").replaceWith(exhibit_photo2);
      $(".img-view2").after(select_3);
      $(".preview2").attr('src', e.target.result);
    }
    reader.readAsDataURL(e.target.files[0]);
  });

  /////3:1/////
  $(document).on('change', '#select_img_3', function (e) {
    let reader = new FileReader();
    reader.onload = function (e) {
      $("label.select_3").replaceWith(exhibit_photo3);
      $(".img-view3").after(select_4);
      $(".preview3").attr('src', e.target.result);
    }
    reader.readAsDataURL(e.target.files[0]);
  });

  /////4:1/////
  $(document).on('change', '#select_img_4', function (e) {
    let reader = new FileReader();
    reader.onload = function (e) {
      $("label.select_4").replaceWith(exhibit_photo4);
      $(".img-view4").after(select_5);
      $(".preview4").attr('src', e.target.result);
    }
    reader.readAsDataURL(e.target.files[0]);
  });

  /////5:1/////
  $(document).on('change', '#select_img_5', function (e) {
    let reader = new FileReader();
    reader.onload = function (e) {
      $("label.select_5").replaceWith(exhibit_photo5);
      $(".content__box__img").append(exhibit_photo5_2);
      $(".preview5").attr('src', e.target.result);
    }
    reader.readAsDataURL(e.target.files[0]);
  });

  /////6:1/////
  $(document).on('change', '#select_img_6', function (e) {
    let reader = new FileReader();
    reader.onload = function (e) {
      $("label.select_6").replaceWith(exhibit_photo6);
      $(".img-view6").after(select_7);
      $(".preview6").attr('src', e.target.result);
    }
    reader.readAsDataURL(e.target.files[0]);
  });

  /////7:1/////
  $(document).on('change', '#select_img_7', function (e) {
    let reader = new FileReader();
    reader.onload = function (e) {
      // $(".content__box__select-img").replaceWith(exhibit_photo1);
      $("label.select_7").replaceWith(exhibit_photo7);
      $(".img-view7").after(select_8);
      $(".preview7").attr('src', e.target.result);
    }
    reader.readAsDataURL(e.target.files[0]);
  });

  /////8:1/////
  $(document).on('change', '#select_img_8', function (e) {
    let reader = new FileReader();
    reader.onload = function (e) {
      $("label.select_8").replaceWith(exhibit_photo8);
      $(".img-view8").after(select_9);
      $(".preview8").attr('src', e.target.result);
    }
    reader.readAsDataURL(e.target.files[0]);
  });
  
  /////9:1/////
  $(document).on('change', '#select_img_9', function (e) {
    let reader = new FileReader();
    reader.onload = function (e) {
      $("label.select_9").replaceWith(exhibit_photo9);
      $(".img-view9").after(select_10);
      $(".preview9").attr('src', e.target.result);
    }
    reader.readAsDataURL(e.target.files[0]);
  });

  /////10/////
  $(document).on('change', '#select_img_10', function (e) {
    let reader = new FileReader();
    reader.onload = function (e) {
      $("label.select_10").replaceWith(exhibit_photo10);
      $(".preview10").attr('src', e.target.result);
    }
    reader.readAsDataURL(e.target.files[0]);
  });
      
  
  /////削除機能/////
  $(document).on("click", "#clear", function(){
    $(".img-view").remove();
    $("label.select_2").replaceWith(select_1)
  });

  $(document).on("click", "#clear2", function(){
    $(".img-view2").remove();
    $("label.select_3").replaceWith(select_2)
  });
  
  $(document).on("click", "#clear3", function(){
    $(".img-view3").remove();
    $("label.select_4").replaceWith(select_3)
  });

  $(document).on("click", "#clear4", function(){
    $(".img-view4").remove();
    $("label.select_5").replaceWith(select_4)
  });

  $(document).on("click", "#clear5", function(){
    $(".img-view5").remove();
    $(".content__box__select-img-2").remove();
    $(".img-view4").after(select_5);
  });

  $(document).on("click", "#clear6", function(){
    $(".img-view6").remove();
    $("label.select_7").replaceWith(select_6)
  });

  $(document).on("click", "#clear7", function(){
    $(".img-view7").remove();
    $("label.select_8").replaceWith(select_7)
  });

  $(document).on("click", "#clear8", function(){
    $(".img-view8").remove();
    $("label.select_9").replaceWith(select_8)
  });

  $(document).on("click", "#clear9", function(){
    $(".img-view9").remove();
    $("label.select_10").replaceWith(select_9)
  });

  $(document).on("click", "#clear10", function(){
    $(".img-view10").replaceWith(select_10);

  });
  
  
});
  
  
  
  
  
  
