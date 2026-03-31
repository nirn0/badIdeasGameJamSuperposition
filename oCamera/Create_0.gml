//set up camera
cam = view_camera[0];
follow = oPlayerPath;
viewWidthHalf = 240//camera_get_view_width(cam) * 0.5;
viewHeightHalf = 135//camera_get_view_height(cam) * 0.5;

xTo = xstart;
yTo = ystart;
moveSpeed = 0
spd = 2;

//camera shake
shakeLength = 0;
shakeMagnitude = 0;
shakeRemain = 0;

detected = 0;