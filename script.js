domready(function(){
	var t = Load.loadTEXT("-flashing-callback/layout.tpl");
	$("#flashing-callback").html(t).click(function(){
		Popup.show({
			onsubmit:true,
			autosavename:"user",
			goal:"contacts",
			data:true,
			tpl:'-flashing-callback/popup.tpl'
		});
	});
});

