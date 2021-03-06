<!-- whitehat captcha.tpl -->
{config_load file=captcha_lang_conf}

<div class="control-group{if isset($register_captcha_error)} error{/if}">
	<label for="input01" class="control-label">CAPTCHA</label>
	<div class="controls">
		{if isset($register_captcha_error)}
			<div class="alert alert-error">
				<button class="close" data-dismiss="alert">&times;</button>
				{$register_captcha_error}
			</div>
		{/if}
		<div id="whitehat_challenge">
			<div id="whitehat_image">
				<img src="{$captcha_path}captchas/WhiteHat/CaptchaSecurityImages.php" />
			</div>
			<input class="span3 whitehat_input" type="text" tabindex="10" style="margin:5px 0 0 0;" size="20" name="security_code" />
			<input type="hidden" name="token" value="{$token_registration_captcha}"/>
			<p class="help-inline whitehat_details">
				{#Pligg_Captcha_Whitehat_Help#}
			</p>
		</div>
	</div>
</div>

{config_load file=captcha_pligg_lang_conf}
<!--/ whitehat captcha.tpl -->