import { Load } from '/vendor/akiyatkin/load/Load.js'
import { CDN } from '/vendor/akiyatkin/load/CDN.js'
let Popup

Load.fire('text','-flashing-callback/layout.tpl').then(async t => {
	await CDN.fire('load','jquery')
	
	$(".flashing-html").html(t)

	$("#flashing-callback").html(t).click(async () => {
		Popup = (await import('/vendor/infrajs/popup/Popup.js')).Popup 
		Popup.show({
			onsubmit:true,
			autosavename:"user",
			goal:"contacts",
			data:true,
			tpl:'-flashing-callback/popup.tpl'
		});
	}).addClass('flashing-html');
	
	
	$(".flashing-callback").html(t).click(async () => {
		Popup = (await import('/vendor/infrajs/popup/Popup.js')).Popup 
		Popup.show({
			onsubmit:true,
			autosavename:"user",
			goal:"contacts",
			data:true,
			tpl:'-flashing-callback/popup.tpl'
		});
	}).addClass('flashing-html');
})
	

