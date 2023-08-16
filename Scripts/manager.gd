extends Node2D


var file_name = "res://Data/contracts.json"
var data = null
var selected_contract = null

func _ready():
	var global = $/root/Global
	$info_bar/company_name.text = global.player_name
	$info_bar/bank_amt.text = str(global.player_funds)
	$info_bar/company_rep.text = global.player_rating
	
	var file = FileAccess.open(file_name, FileAccess.READ)
	var json_text = file.get_as_text()
	file.close()
	data = JSON.parse_string(json_text)
	if data:
		for contract in data:
			var item_text = contract["name"]
			
			$contracts_panel/contract_list.add_item(item_text)



func _on_item_list_item_selected(index):
	print(index, "selected", data[index])
	var contract = data[index]
	var details = "Name: %s\n
				Description: %s\n
				Difficulyt: %s\n
				Reward: $%d" % [contract["name"],
				contract["description"],
				contract["difficulty"],
				contract["reward"]]
	$contracts_panel/contract_details.text = details
