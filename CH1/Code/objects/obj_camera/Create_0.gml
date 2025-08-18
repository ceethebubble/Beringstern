// CREATE EVENT
camWidth = 1270;
camHeight = 720;
camera_zoom = 0.5;

follow = obj_player;  // Reference the player object
xTo = follow.x;
yTo = follow.y;

x = xTo
y = yTo

minX = (camWidth * 0.5) / camera_zoom;
minY = (camHeight * 0.5) / camera_zoom;
maxX = room_width - (camWidth * 0.5) / camera_zoom;
maxY = room_height - (camHeight * 0.5) / camera_zoom;
