extends Node2D

var left_player_score = 0
var right_player_score = 0

func _on_left_wall_body_entered(body):
	body.reset_ball()
	right_player_score += 1
	get_node("RightLabel").text = str(right_player_score)

func _on_right_wall_body_entered(body):
	body.reset_ball()
	left_player_score += 1
	get_node("LeftLabel").text = str(left_player_score)
