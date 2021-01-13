extends Label

var time = 86395
var timer_on = false

func _process(delta):
	if(timer_on):
		time += delta
		
	var mils = fmod(time,1)*1000
	var secs = fmod(time,60)
	var mins = fmod(time, 60*60) / 60
	var hr = fmod(fmod(time,3600 * 60) / 3600,24)
	var dy = fmod(time,12960000) / 86400
	
	var time_passed = "%02d : %02d : %02d : %02d : %03d" % [dy,hr,mins,secs,mils]
	text = time_passed# + " : " + var2str(time)
	
	pass

func _on_btn_start_pressed() -> void:
	timer_on = true
	pass # Replace with function body.

func _on_btn_stop_pressed() -> void:
	timer_on = false
	pass # Replace with function body.

func _on_btn_reset_pressed() -> void:
	time = 0
	pass # Replace with function body.
