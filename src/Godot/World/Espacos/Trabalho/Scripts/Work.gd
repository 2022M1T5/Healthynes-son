extends Node2D

onready var pedro = $Player

func _process(delta):
	get_tree().paused = false
	if pedro.position.y >= 340:
		get_tree().change_scene("res://World.tscn")
