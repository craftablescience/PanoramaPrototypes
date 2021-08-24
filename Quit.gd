extends Button

func _on_Quit_pressed():
	if OS.get_name() == "HTML5":
		JavaScript.eval("close();", true)
	else:
		get_tree().quit()
