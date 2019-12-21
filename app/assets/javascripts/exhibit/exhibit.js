  // preview部分の作成
  // 引数に数字を渡すことでクラスに適用
  function buildPhotoHtml(photo_num) {
    let exhibit_photo = 
    `
    <div class="img-view${photo_num}">
      <div class="img-field">
        <div class="img-field-upper">
          <img class="preview${photo_num}">
        </div>
        <div class="img-field-bottom">
          <label class="change">
            <div class="edit-btn">編集</div>
            <button id="clear${photo_num}">削除</button>
          </label>
        </div>
      </div>
    </div>
    `

    return exhibit_photo
  }


  // selectフォームの部分の作成(画像投稿部分)
  // preview同様、引数に数字を渡すことでクラスに適用
  function buildSelectHtml(select_num) {
    let select = 
    `
    <input class="select_img_${select_num}" type="file" id="select_img_${select_num}" name="images[]" multiple>
    <div class="select_${select_num}">
      <label class="content__box__dropbox__${select_num}" for="select_img_${select_num}">
        <div class="content__box__dropbox__form">
          ドラッグアンドドロップ
          <br>
          またはクリックしてファイルをアップロード
        </div>
      </label>
    </div>
    `
    return select
  }

  /////出品画像表示/////
  
    let exhibit_photo5_2 =
    `
    <div class="content__box__select-img-2">
      <input class="select_img_6" id="select_img_6" type="file" name="images[]", multiple= true>
      <div class="select_6">
        <label class="content__box__dropbox__6" for="select_img_6">
          <div class="content__box__dropbox__form">
            ドラッグアンドドロップ
            <br>
            またはクリックしてファイルをアップロード
          </div>
        </label>
      </div>
    </div>
    `

  // カテゴリーの各オプションの作成
  function buildOption(category){
    let html = `
      <option value="${category.id}">${category.name}</option>
    `
    return html
  }

  ////カテゴリー２の作成/////
  function buildCategory2(insertHtml){
    let html = `
      <div class="content__box__select-category2">
        <div class="content__box__select-category__box">
          <select class="select2" id="select2">
            <option value>---</option>
            ${insertHtml}
          </select>
          <div class="icon">
            <i class="fa fa-angle-down"></i>
          </icon>
        </div>
      </div>
    `
    return html
  }

  /////カテゴリー３の作成/////
  function buildCategory3(insertHtml){
    let html =  `
      <div class="content__box__select-category3">
        <div class="content__box__select-category__box">
          <select class="select3" name=[category][id]>
            <option value>---</option>
            ${insertHtml}
          </select>
          <div class="icon">
            <i class="fa fa-angle-down"></i>
          </icon>
        </div>
      </div>
    `
    return html
  }

    // 子カテゴリ(category_2)の表示
    $(document).on("change", "#select", function(e){
      e.preventDefault();
      let parentId = document.getElementById('select').value;
      if (parentId) {
        $.ajax({
          url: '/exhibits/get_category_children',
          type: 'GET',
          data: { parent_id: parentId },
          dataType: 'json'
        })
        .done(function(children){
          $('.content__box__select-category2').remove();
          $('.content__box__select-category3').remove();
          $('#size_wrapper').remove();
          $('#brand_wrapper').remove();
          let insertHtml = '';
          children.forEach(function(child){
            insertHtml += buildOption(child);
          })
          let html = buildCategory2(insertHtml);
          $('.content__box__select-category').append(html)
        })
        .fail(function(){
          alert('カテゴリー取得に失敗しました');
        })
      }
      else {
        $('.content__box__select-category2').remove();
      }
    });

    $(document).on("change", "#select2", function(e){
      e.preventDefault();
      let childId = $(this).val();
      if (childId){
        $.ajax({
          url: '/exhibits/get_category_children',
          type: 'GET',
          data: { parent_id: childId },
          dataType: 'json'
        })
        .done(function(children){
          $('.content__box__select-category3').remove();
          let insertHtml = '';
          children.forEach(function(child){
            insertHtml += buildOption(child);
          })
          let html = buildCategory3(insertHtml);
          $('.content__box__select-category2').append(html)
        })
        .fail(function(){
          alert('カテゴリー取得に失敗しました');
        })
      }
      else {
        $('.content__box__select-category3').remove();
      }
    });

  /////サイズとブラント追加/////
    $(document).on("change", ".select3", function(){
      $('#size_wrapper').remove();
      $('#brand_wrapper').remove();
      let size =
      `
      <div class="content__box-middle" id="size_wrapper">
        <div class="content__box__title">
          サイズ
          <div class="form_require">
            必須
          </div>
        </div>
        <div class="content__box__select">
          <div class="content__box__select__box">
            <select class="select6" name=[exhibit][size_id]>
              <option value="0">---</option>
              <option value="1">XXS以下</option>
              <option value="2">XS(SS)</option>
              <option value="3">S</option>
              <option value="4">M</option>
              <option value="5">L</option>
              <option value="6">XL(LL)</option>
              <option value="7">2XL(3L)</option>
              <option value="8">3XL(4L)</option>
              <option value="9">4XL(5L)以上</option>
              <option value="10">FREE SIZE</option>
            </select>
                </select>                
            </select>
                </select>                
              </select>
                </select>                
            </select>
            <div class="icon">
              <i class="fa fa-angle-down"></i>
            </div>
          </div>
        </div>
      </div>

      <div class="content__box-middle" id="brand_wrapper">
        <div class="content__box__title">
          ブランド
          <div class="form_require", id="opt">
            任意
          </div>
        </div>
        <div class="content__box__select">
          <div class="content__box__select__box">
            <input :name class="input-form_brand" placeholder= "例）シャネル" name= [brand][name]>
          </div>
        </div>
      </div>

  `
    
  $(".content__box__select-category3").append(size);
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
          <select :delivery_type_id class="select5" name=[delivery][delivery_type_id]>
            <option value="0">--
            <option value="1">未定
            <option value="2">らくらくメルカリ便
            <option value="3">ゆうメール
            <option value="4">レターパック
            <option value="5">普通郵便(定形、定形外)
            <option value="6">クロネコヤマト
            <option value="7">ゆうパック
            <option value="8">クリックポスト
            <option value="9">ゆうパケット
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
  $(document).on('change', '#select_img_1', function (e) {
    let reader = new FileReader();
    reader.onload = function (e) {
      $(".select_1").replaceWith(buildPhotoHtml('1'));
      $(".img-view1").after(buildSelectHtml('2'));
      $(".preview1").attr('src', e.target.result);
    }
    reader.readAsDataURL(e.target.files[0]);
  });

  /////2:1/////
  $(document).on('change', '#select_img_2', function (e) {
    let reader = new FileReader();
    reader.onload = function (e) {
      $(".select_2").replaceWith(buildPhotoHtml('2'));
      $(".img-view2").after(buildSelectHtml('3'));
      $(".preview2").attr('src', e.target.result);
    }
    reader.readAsDataURL(e.target.files[0]);
  });

  /////3:1/////
  $(document).on('change', '#select_img_3', function (e) {
    let reader = new FileReader();
    reader.onload = function (e) {
      $(".select_3").replaceWith(buildPhotoHtml('3'));
      $(".img-view3").after(buildSelectHtml('4'));
      $(".preview3").attr('src', e.target.result);
    }
    reader.readAsDataURL(e.target.files[0]);
  });

  /////4:1/////
  $(document).on('change', '#select_img_4', function (e) {
    let reader = new FileReader();
    reader.onload = function (e) {
      $(".select_4").replaceWith(buildPhotoHtml('4'));
      $(".img-view4").after(buildSelectHtml('5'));
      $(".preview4").attr('src', e.target.result);
    }
    reader.readAsDataURL(e.target.files[0]);
  });

  /////5:1/////
  $(document).on('change', '#select_img_5', function (e) {
    let reader = new FileReader();
    reader.onload = function (e) {
      $(".select_5").replaceWith(buildPhotoHtml('5'));
      $(".content__box__img").append(exhibit_photo5_2);
      $(".preview5").attr('src', e.target.result);
    }
    reader.readAsDataURL(e.target.files[0]);
  });

  /////6:1/////
  $(document).on('change', '#select_img_6', function (e) {
    let reader = new FileReader();
    reader.onload = function (e) {
      $(".select_6").replaceWith(buildPhotoHtml('6'));
      $(".img-view6").after(buildSelectHtml('7'));
      $(".preview6").attr('src', e.target.result);
    }
    reader.readAsDataURL(e.target.files[0]);
  });

  /////7:1/////
  $(document).on('change', '#select_img_7', function (e) {
    let reader = new FileReader();
    reader.onload = function (e) {
      $(".select_7").replaceWith(buildPhotoHtml('7'));
      $(".img-view7").after(buildSelectHtml('8'));
      $(".preview7").attr('src', e.target.result);
    }
    reader.readAsDataURL(e.target.files[0]);
  });

  /////8:1/////
  $(document).on('change', '#select_img_8', function (e) {
    let reader = new FileReader();
    reader.onload = function (e) {
      $(".select_8").replaceWith(buildPhotoHtml('8'));
      $(".img-view8").after(buildSelectHtml('9'));
      $(".preview8").attr('src', e.target.result);
    }
    reader.readAsDataURL(e.target.files[0]);
  });
  
  /////9:1/////
  $(document).on('change', '#select_img_9', function (e) {
    let reader = new FileReader();
    reader.onload = function (e) {
      $(".select_9").replaceWith(buildPhotoHtml('9'));
      $(".img-view9").after(buildSelectHtml('10'));
      $(".preview9").attr('src', e.target.result);
    }
    reader.readAsDataURL(e.target.files[0]);
  });

  /////10/////
  $(document).on('change', '#select_img_10', function (e) {
    let reader = new FileReader();
    reader.onload = function (e) {
      $(".select_10").replaceWith(buildPhotoHtml('10'));
      $(".preview10").attr('src', e.target.result);
    }
    reader.readAsDataURL(e.target.files[0]);
  });
      
  
  /////削除機能/////
  $(document).on("click", "#clear1", function(){
    $(".img-view1").remove();
    $("#select_img_1").remove();
    $(".select_2").replaceWith(buildSelectHtml('1'));
  });

  $(document).on("click", "#clear2", function(){
    $(".img-view2").remove();
    $("#select_img_2").remove();
    $(".select_3").replaceWith(buildSelectHtml('2'));
  });
  
  $(document).on("click", "#clear3", function(){
    $(".img-view3").remove();
    $("#select_img_3").remove();
    $(".select_4").replaceWith(buildSelectHtml('3'))
  });

  $(document).on("click", "#clear4", function(){
    $(".img-view4").remove();
    $("#select_img_4").remove();
    $(".select_5").replaceWith(buildSelectHtml('4'))
  });

  $(document).on("click", "#clear5", function(){
    $(".img-view5").remove();
    $("#select_img_5").remove();
    $(".content__box__select-img-2").remove();
    $(".img-view4").after(buildSelectHtml('5'));
  });

  $(document).on("click", "#clear6", function(){
    $(".img-view6").remove();
    $("#select_img_6").remove();
    $(".select_7").replaceWith(buildSelectHtml('6'))
  });

  $(document).on("click", "#clear7", function(){
    $(".img-view7").remove();
    $("#select_img_7").remove();
    $(".select_8").replaceWith(buildSelectHtml('7'))
  });

  $(document).on("click", "#clear8", function(){
    $(".img-view8").remove();
    $("#select_img_8").remove();
    $(".select_9").replaceWith(buildSelectHtml('8'))
  });

  $(document).on("click", "#clear9", function(){
    $(".img-view9").remove();
    $("#select_img_9").remove();
    $(".select_10").replaceWith(buildSelectHtml('9'))
  });

  $(document).on("click", "#clear10", function(){
    $("#select_img_10").remove();
    $(".img-view10").replaceWith(buildSelectHtml('10'));

  });
