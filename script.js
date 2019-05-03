domready(function(){
	var t = Load.loadTEXT("-flashing-callback/layout.tpl"); //cache
	$(".flashing-html").html(t);

	$("#flashing-callback").html(t).click(function(){
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
});

