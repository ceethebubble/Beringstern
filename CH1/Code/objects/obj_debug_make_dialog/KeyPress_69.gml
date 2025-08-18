dialog = get_string("New dialog:",dialog)
if vl != ""
{
	makeDialogSound(asset_get_index(vl))
}
show_debug_message("CODE:\nmakeDialogSound(\""+ vl +"\")\nstart_dialogue(\"" + string(speaker) + "\", \"" + string(dialog) + "\", \"" + string(expression) + "\", " + string(ts) + ")")
start_dialogue(speaker,dialog,expression,ts)