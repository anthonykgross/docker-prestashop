<?php
/* Smarty version 3.1.33, created on 2019-10-06 17:29:36
  from '/var/www/html/admin863eyxavq/themes/default/template/content.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5d9a08603b5cf3_50898880',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'dac936f38796d0f3fa95b7101cb64d8a53ff2477' => 
    array (
      0 => '/var/www/html/admin863eyxavq/themes/default/template/content.tpl',
      1 => 1570374712,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5d9a08603b5cf3_50898880 (Smarty_Internal_Template $_smarty_tpl) {
?><div id="ajax_confirmation" class="alert alert-success hide"></div>
<div id="ajaxBox" style="display:none"></div>


<div class="row">
	<div class="col-lg-12">
		<?php if (isset($_smarty_tpl->tpl_vars['content']->value)) {?>
			<?php echo $_smarty_tpl->tpl_vars['content']->value;?>

		<?php }?>
	</div>
</div>
<?php }
}
