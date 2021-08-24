extends VBoxContainer

func _on_campaign_pressed(num):
	get_parent().get_parent().hide()
	get_parent().get_parent().get_parent().get_node("MenuCampaigns").current_tab = num

func _on_P2CE_pressed():
	_on_campaign_pressed(0)

func _on_PETI_pressed():
	_on_campaign_pressed(3)

func _on_REVOLUTION_pressed():
	_on_campaign_pressed(4)

func _on_ABYSS_pressed():
	_on_campaign_pressed(5)

func _on_P2_pressed():
	_on_campaign_pressed(6)
