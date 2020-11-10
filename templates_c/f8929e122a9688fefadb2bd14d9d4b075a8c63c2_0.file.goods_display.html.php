<?php
/* Smarty version 3.1.29, created on 2020-11-10 06:48:57
  from "C:\UniServerZ\www\mini_shop\templates\goods_display.html" */

if ($_smarty_tpl->smarty->ext->_validateCompiled->decodeProperties($_smarty_tpl, array (
  'has_nocache_code' => false,
  'version' => '3.1.29',
  'unifunc' => 'content_5faa37d9ae1c12_34209785',
  'file_dependency' => 
  array (
    'f8929e122a9688fefadb2bd14d9d4b075a8c63c2' => 
    array (
      0 => 'C:\\UniServerZ\\www\\mini_shop\\templates\\goods_display.html',
      1 => 1604990931,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5faa37d9ae1c12_34209785 ($_smarty_tpl) {
?>
<div class="row">
  <div class="col-md-6">
    <img src="<?php echo $_smarty_tpl->tpl_vars['goods']->value['pic'];?>
" alt="<?php echo $_smarty_tpl->tpl_vars['goods']->value['goods_title'];?>
" class="img-thumbnail">
  </div>
  <div class="col-md-6">
    <h2><?php echo $_smarty_tpl->tpl_vars['goods']->value['goods_title'];?>
</h2>
    <p>售價：<?php echo $_smarty_tpl->tpl_vars['goods']->value['goods_price'];?>
元整</p>
    <p>人氣：<?php echo $_smarty_tpl->tpl_vars['goods']->value['goods_counter'];?>
</p>
    <div>
      <a href="index.php?op=add_to_cart&goods_sn=<?php echo $_smarty_tpl->tpl_vars['goods']->value['goods_sn'];?>
&goods_title=<?php echo $_smarty_tpl->tpl_vars['goods']->value['goods_title'];?>
&goods_amount=1" class="btn btn-primary" role="button">加入購物車</a>
      <?php if ($_smarty_tpl->tpl_vars['isAdmin']->value) {?>
        <a href="tool.php?op=goods_form&goods_sn=<?php echo $_smarty_tpl->tpl_vars['goods']->value['goods_sn'];?>
" class="btn btn-warning">編輯商品</a>
        <a href="tool.php?op=delete_goods&goods_sn=<?php echo $_smarty_tpl->tpl_vars['goods']->value['goods_sn'];?>
" class="btn btn-danger">刪除商品</a>
      <?php }?>
    </div>
  </div>
</div>


<ul class="nav nav-tabs">
  <li role="presentation" class="active"><a href="#goods" aria-controls="goods" role="tab" data-toggle="tab">商品介紹</a></li>
  <li role="presentation"><a href="#note" aria-controls="note" role="tab" data-toggle="tab">退換貨須知</a></li>
  <li role="presentation"><a href="#service" aria-controls="service" role="tab" data-toggle="tab">售後服務</a></li>
  <li role="presentation"><a href="#other" aria-controls="other" role="tab" data-toggle="tab">關於卡特島</a></li>
</ul>

<div class="tab-content">
  <div role="tabpanel" class="tab-pane active" id="goods">
    <h3>商品介紹</h3>
    <p><?php echo $_smarty_tpl->tpl_vars['goods']->value['goods_content'];?>
</p>
  </div>
  <div role="tabpanel" class="tab-pane" id="note">
    <h3>退換貨須知</h3>
    <ul>
      <li><span class="text-danger">退換貨前請先聯繫卡特島</span><br>EMAIL：carterisland.service@gmail.com<br>FACEBOOK：<a href="#" target="_blank">https://www.facebook.com/carterisland.official/</a><br>請提供您的購買平台、訂單編號、退換貨原因，退貨請提供退款帳戶銀行名稱及代號、分行名稱及代號、戶名、帳號(信用卡付款可直接刷退)，換貨請提供收件人姓名、電話、地址或是收件門市。</li>
      <li><span class="text-danger">退換貨流程</span>如果買家收到商品後7日內卡特島都提供退換貨服務，超過7日一律不受理。(商品若洗滌、遇水及人為汙損，將不受理退換貨)請買家將『退貨商品+吊牌及其他相關贈品、單據』寄回卡特島，退換貨資料與服務卡務必詳細填寫減少核對時間，卡特島將能更快速為買家處理退換貨商品。</li>
      <li><span class="text-danger">退換貨寄回</span>將透過711交貨便、貨運及郵局包裹寄回</li>
      <li><span class="text-danger">退貨退款</span>收到退貨商品後7-14個工作天內退款(訂單總金額+寄回運費)至買家指定銀行帳戶中。</li>
      <li><span class="text-danger">換貨寄出</span>收到換貨商品後7-14個工作天內將換貨商品及寄回運費寄出。</li>
      <li><span class="text-danger">其他注意事項</span><br>1.買家請勿擅自在未聯繫卡特島的情形下將換貨商品直接寄回，以免造成無商品可更換造成買家權益受損。<br>2.收到換貨商品有問題，請7天內提出告知賣家，超過時間不受理。<br>3.經卡特島發現若有惡意換貨或退貨的不肖買家，將經由法律途徑處理，請自重。<br>4.寄回運費最高補貼80元整。</li>
    </ul>
  </div>
  <div role="tabpanel" class="tab-pane" id="service">
    <h3>售後服務</h3>
    <ul>
      <li>如您收到商品，請依正常程序儘速檢查商品，若商品發生新品瑕疵之情形，您可申請更換新品或退貨，請直接點選<a href="#" target="_blank">聯絡我們</a>。</li>
      <li>若您對於購買流程、付款方式、退貨及商品運送方式有疑問，你可直接點選<a href="#" target="_blank">會員中心</a>。</li>
    </ul>
  </div>
  <div role="tabpanel" class="tab-pane" id="other">
    <h3>關於卡特島</h3>
    <ul>
      <li>卡特島創意將插畫家筆下生動的人物，帶入真實的生活中，讓它們無時無刻能陪在身旁，為黑白生活加上點色彩。專為台灣插畫家打造專屬商品，只為做出最滿意最獨特的商品，讓支持台灣插畫的粉絲們，能擁有更多暖心的小物。</li>
    </ul>
  </div>
</div>

<?php }
}
