extends TextureButton

func _on_Exit_pressed():
	if OS.get_name() == "HTML5":
		# Hacky but seems to work
		JavaScript.eval("open(location, '_self').close();", true)
	else:
		get_tree().quit()
