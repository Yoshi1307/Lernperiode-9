extends Control

var database : SQLite

func _ready():
	database = SQLite.new()
	database.path ="res://data.db"
	database.open_db()


func _on_insert_data_button_down() -> void:
	var data = {
		"name" : $Name.text,
		"score" : int($Score.text)
		}
	database.insert_row("players", data)
	
	pass # Replace with function body.


func _on_create_table_button_down() -> void:
	var table = {
		"id" : {"data_type":"int", "primary_key": true, "not_null":true, "auto_increment": true, },
		"name" : {"data_type":"text"},
		"score" : {"data_type" : "int"}
	}
	database.create_table("players", table)
	pass # Replace with function body.


func _on_select_data_button_down() -> void:
	print(database.select_rows("players","score > 10", ["name", "score"]))
	pass # Replace with function body.


func _on_update_data_button_down() -> void:
	database.update_rows("players","name = '" + $Name.text + "'", {"score": int($Score.text)})
	pass # Replace with function body.


func _on_delete_data_button_down() -> void:
	database.delete_rows("players", "name = '" + $Name.text + "'")
	pass # Replace with function body.


func _on_custom_data_button_down() -> void:
	database.query("select * from players
	join playerInfo on playerInfo.id = players.playerinfoid
	where score > " + $Score.text)

	pass # Replace with function body.


func _on_store_image_button_down() -> void:
	var image := preload("res://cpmff2.klein_.jpg")
	var pba = image.get_image().save_jpg_to_buffer()
	database.update_rows("players", "name = 'Timo'", {"picture" : pba})
	pass # Replace with function body.


func _on_load_image_button_down() -> void:
	database.select_rows("players", "name = 'Timo'", ["*"])
	for i in database.query_result:
		var image = Image.new()
		image.load_jpg_from_buffer(i["picture"])
		var texture = ImageTexture.create_from_image(image)
		$TextureRect.texture = texture
	pass # Replace with function body.
