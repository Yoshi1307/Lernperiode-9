extends Control

var database : SQLite


func _ready():
	database = SQLite.new()
	database.path ="res://data.db"
	database.open_db()


	
	var table = {
			"id" : {"data_type":"int", "primary_key": true, "not_null":true, "auto_increment": true},
			"name" : {"data_type":"text"},
			"score" : {"data_type":"int"}    
		}
	database.create_table("players", table)

func _on_start_game_button_down() -> void:

	Global.current_player_name = $Name.text
	var name = Global.current_player_name

	
	var query = "SELECT * FROM players WHERE name = '%s';" % name
	database.query(query)

	if database.query_result.size() == 0:
		var data = {
			"name": name,
			"score": 0	
		}
		database.insert_row("players", data)



	get_tree().change_scene_to_file("res://scenes/game.tscn")
	
	
