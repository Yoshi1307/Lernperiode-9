extends Control

var database : SQLite

func _ready():
	database = SQLite.new()
	database.path ="res://data.db"
	database.open_db()

func _on_Start_button_down() -> void:
	if database.table_exists("players"):
	else:var table = {
			"id" : {"data_type":"int", "primary_key": true, "not_null":true, "auto_increment": true},
			"name" : {"data_type":"text"},
			"score" : {"data_type":"int"}    
	}
	database.create_table("players", table)
	

	var data = {
		"name" : $Name.text
	}
	database.insert_row("players", data)

	get_tree().change_scene_to_file("res://scenes/game.tscn")
