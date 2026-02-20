extends Control

var database : SQLite

func _ready():
	database = SQLite.new()
	database.path ="res://data.db"
	database.open_db()


func _on_insert_data_button_down() -> void:
	pass # Replace with function body.


func _on_create_table_button_down() -> void:
	pass # Replace with function body.


func _on_select_data_button_down() -> void:
	pass # Replace with function body.


func _on_update_data_button_down() -> void:
	pass # Replace with function body.


func _on_delete_data_button_down() -> void:
	pass # Replace with function body.


func _on_custom_data_button_down() -> void:
	pass # Replace with function body.
