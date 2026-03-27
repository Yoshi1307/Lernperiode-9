----
title: SQLite Tutorial für Godot
---

# Goal

In this tutorial, you will learn how to connect an SQLite database to your Godot game and save changes/progress from your game.

# Previous Knowledge

No previous knowledge needed.

# What you'll learn

In this tutorial, you will learn how to connect an SQLite database to your Godot game and save changes/progress from your game.

# Tutorial

Before we start, you have to download SQLite. Here's a quick tutorial to make it easier: https://www.youtube.com/watch?v=fAcQ2x3h9sA . After you downloaded SQLite yiu can open Godot and go to the AssetLib button. Here you have to search for Godot-SQLite from 2shady4u and also download it. Now we can start with the code.
To connect your game to SQLite in Godot, you create an SQLite object in your script and open a database file.
var database : SQLite


func _ready():
	database = SQLite.new()
	database.path ="res://data.db"
	database.open_db()

The path I used for the database is in the same folder as the game, so I always know where I saved it. You can choose wherever's best for you.
You're now ready to add things into your database. For my game, I'm saving the times a player crossed the finish line in different tries. First we have to create the table like this:

	var table = {
			"id" : {"data_type":"int", "primary_key": true, "not_null":true, "auto_increment": true},
			"name" : {"data_type":"text"},
			"score" : {"data_type":"int"}    
		}
	database.create_table("players", table)
 	
Now we have to create a global script so we can save the player name and use it in different scripts. First, we have to add a normal script called Global.gd. Next, you have to open the project settings and search for Globals. Here you add your script. The code in the script is just one line of code but still necessary:

var current_player_name = ""

In my game you start in a menu, where you have to type your name and press start. From there you get sent into the game scene.
First you have to create a new scene and add a StartGame button and a TextEdit called Name. With this code, it will save the name typed into the variable Global.current_player_name, so we can use it later. It will then search the database for a player with this name. If the player doesn't exist, a new row in the database gets created with the name typed. If the name already exists, it will just skip this part. Last, it changes the scene to game.tscn so we can actually play.

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

For the game to save your score in the database, we have to switch scripts and go to the Player.gd script. Here you add the following function and varaible:


func _ready():
	database = SQLite.new()
	database.path = "res://data.db"
	database.open_db()

var finished = false	

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.name == "player" and not finished:
		finished = true

		var query = "UPDATE players SET score = score + 1 WHERE name = '%s';" % Global.current_player_name
		database.query(query)
		
If the player now enters the finish zone the first time, the score of the player in the database will get increased by 1. The finished variable in combination with the if statement checks if the Player has already entered the finish zone once, so you can't get unlimited points in 1 run.

# Result

Your game now saves times a player has finished the game in a database and can get watched, even when the game is closed. If you'd like, you could also add a leaderboard that takes the score and shows it in the game.

# What could go wrong?

Problems that I had were that I used two different paths for my database, so it didn't save everything like I wanted. Another problem that existed was indentation (Einrückung). I still don't really know how it works, but many times your code will show errors, not because you wrote something wrong, but because it isn't indented correctly.