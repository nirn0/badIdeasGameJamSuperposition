// Zooming if needed.
if(view_wid!=view_wid_tar){
    view_wid=lerp(view_wid,view_wid_tar,lv);
}

if(view_hei!=view_hei_tar){
    view_hei=lerp(view_hei,view_hei_tar,lv);
}

// Update View Position.
// The view_wid_tar/2 mumbo jumbo is to center the view on the object following.
if(instance_exists(cam_tar)){
    x=lerp(x,cam_tar.x,.025);
    y=lerp(y,cam_tar.y,.025);
}

// Update Lerp Value.
lv+=.001;

// Positioning Camera.
camera_set_view_size(view_camera[0],view_wid,view_hei);
camera_set_view_pos(view_camera[0],x-view_wid/2,y-view_hei/2);