extends Node2D


var file_name = "res://Data/contracts.json"


func _ready():
	var global = $/root/Global
	$info_bar/company_name.text = global.player_name
	$info_bar/bank_amt.text = str(global.player_funds)
	$info_bar/company_rep.text = global.player_rating
	
	var file = FileAccess.open(file_name, FileAccess.READ)
	var json_text = file.get_as_text()
	file.close()
	var data = JSON.parse_string(json_text)
	if data:
		for contract in data:
			for info in contract:
				pass


func _on_item_list_item_selected(index):
	print(index, "selected")


func _on_item_list_item_activated(index):
	print(index, "activated")
