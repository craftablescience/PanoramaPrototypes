extends Control

var p2ce = preload("res://p2celogo.jpg")
var p2 = preload("res://p2logo.jpg")
var peti = preload("res://peti.png")
var revo = preload("res://revologo.jpg")
var abyss = preload("res://abysslogo.jpg")

func _ready():
	_on_P2CE_pressed()

func _on_CampaignPicker_pressed():
	if $Picker.visible:
		$Picker.hide()
	else:
		$Picker.show()


func _on_P2CE_pressed():
	$CampaignPicker.texture_normal = p2ce
	$MenuContainer.current_tab = 2
	$Picker.hide()

func _on_PETI_pressed():
	$CampaignPicker.texture_normal = peti
	$MenuContainer.current_tab = 4
	$Picker.hide()

func _on_Revolution_pressed():
	$CampaignPicker.texture_normal = revo
	$MenuContainer.current_tab = 5
	$Picker.hide()

func _on_Abyss_pressed():
	$CampaignPicker.texture_normal = abyss
	$MenuContainer.current_tab = 6
	$Picker.hide()

func _on_P2_pressed():
	$CampaignPicker.texture_normal = p2
	$MenuContainer.current_tab = 3
	$Picker.hide()

func _on_WorkshopAddons_pressed():
	$MenuContainer.current_tab = 0
	$Picker.hide()

func _on_Settings_pressed():
	$MenuContainer.current_tab = 1
	$Picker.hide()


func _on_VideoPlayer_finished():
	$"MenuContainer/P2CE Menu/VideoPlayer".play()
