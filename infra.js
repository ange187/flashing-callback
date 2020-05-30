import { Load } from '/vendor/akiyatkin/load/Load.js'
import { CDN } from '/vendor/akiyatkin/load/CDN.js'

Load.fire('text','-flashing-callback/layout.tpl').then(async t => {
	await CDN.fire('load','jquery')
	
	$(".flashing-html").html(t)

	$("#flashing-callback").html(t).click( function (){
		Popup.show({
			onsubmit:true,
			autosavename:"user",
			goal:"contacts",
			data:true,
			tpl:'-flashing-callback/popup.tpl'
		});
	}).addClass('flashing-html');
	
	
	$(".flashing-callback").html(t).click(function(){
		Popup.show({
			onsubmit:true,
			autosavename:"user",
			goal:"contacts",
			data:true,
			tpl:'-flashing-callback/popup.tpl'
		});
	}).addClass('flashing-html');
})
	

