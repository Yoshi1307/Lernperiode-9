extends Control

var database : SQLite


func _ready():
	database = SQLite.new()
	database.path ="res://data.db"
	database.open_db()




func _on_start_game_button_down() -> void:

	Global.current_player_name = $Name.text
	
	var table = {
			"id" : {"data_type":"int", "primary_key": true, "not_null":true, "auto_increment": true},
			"name" : {"data_type":"text"},
			"score" : {"data_type":"int"}    
		}
	database.create_table("players", table)
	
	var data = {
			"name" : Global.current_player_name,
			"score" : 0	
		}
	database.insert_row("players", data)


	get_tree().change_scene_to_file("res://scenes/game.tscn")
	
	
