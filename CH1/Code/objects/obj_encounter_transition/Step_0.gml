ease_time += delta_time / 1000000; // delta_time is in microseconds
var t = clamp(ease_time / ease_duration, 0, 1);

// Ease in-out (sine function version!)
var eased_t = -0.5 * (cos(pi * t) - 1);

// Now move the y using eased value
y = lerp(starty, ytarget, eased_t);