extends Control

func _on_VideoPlayer_finished():
	$MenuCampaigns/P2CE/VideoPlayer.play()


func _on_P2CE_pressed():
	$MenuCampaigns.current_tab = 0
	$MenuTabs.hide()

func _on_tab_pressed(tab):
	if $MenuTabs.visible and $MenuTabs.current_tab == tab:
		$MenuTabs.hide()
	else:
		$MenuTabs.show()
		$MenuTabs.current_tab = tab

func _on_Play_pressed():
	_on_tab_pressed(0)

func _on_Addons_pressed():
	_on_tab_pressed(1)

func _on_Settings_pressed():
	_on_tab_pressed(2)

func _on_Exit_pressed():
	_on_tab_pressed(3)

func _on_ExitYes_pressed():
	if OS.get_name() == "HTML5":
		# Hacky but seems to work
		JavaScript.eval("open(location, '_self').close();", true)
	else:
		get_tree().quit()

func _on_ExitNo_pressed():
	$MenuTabs.hide()

func _on_Button11_pressed():
	var uri = "https://en.wikipedia.org/wiki/Gilligan%27s_Island"
	if OS.get_name() == "HTML5":
		JavaScript.eval("open(\"" + uri + "\", '_blank').focus();", true)
	OS.shell_open(uri)
