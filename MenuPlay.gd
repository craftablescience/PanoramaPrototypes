extends VBoxContainer

var p2ce = preload("res://p2celogo.jpg")
var p2 = preload("res://p2logo.jpg")
var peti = preload("res://peti.png")
var revo = preload("res://revologo.jpg")
var abyss = preload("res://abysslogo.jpg")

func _on_campaign_pressed(num):
	get_parent().get_parent().hide()
	get_parent().get_parent().get_parent().get_node("MenuCampaigns").current_tab = num

func set_play_picture(pic):
	get_parent().get_parent().get_parent().get_node("MenuButtons/Play").texture_normal = pic

func _on_P2CE_pressed():
	_on_campaign_pressed(0)
	set_play_picture(p2ce)

func _on_PETI_pressed():
	_on_campaign_pressed(3)
	set_play_picture(peti)

func _on_REVOLUTION_pressed():
	_on_campaign_pressed(4)
	set_play_picture(revo)

func _on_ABYSS_pressed():
	_on_campaign_pressed(5)
	set_play_picture(abyss)

func _on_P2_pressed():
	_on_campaign_pressed(6)
	set_play_picture(p2)
