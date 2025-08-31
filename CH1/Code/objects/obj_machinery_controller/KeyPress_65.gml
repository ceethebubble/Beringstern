if (global.debug) {
    var ms = song_ms;
    var ev = { "milliseconds": ms };
    array_push(events, ev);
    show_debug_message("Added ms: " + string(ms));
}