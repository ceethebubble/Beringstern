if !global.dialogging
{
	audio_pause_sound(global.sounddialog)
}
else
{
	audio_resume_sound(global.sounddialog)
}
show_debug_message("Dialogging: "+string(global.dialogging))