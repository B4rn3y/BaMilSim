
{_x setObjectTexture [0, "#(argb,512,512,1)r2t(rendersurface,1.333)"];} foreach [Bildschirm1,Bildschirm2,Bildschirm3,Bildschirm4,Bildschirm5,Bildschirm6,Bildschirm7,Bildschirm8];


LHM_SPAWN_OBJ = "Land_Ammobox_rounds_F" createVehicleLocal [5741,11362.7,0.00144196];
LHM_SPAWN_OBJ setposatl [5741,11362.7,0.00144196];
LHM_SPAWN_OBJ hideObject true;


_distanceCam = 1000 * (
        [boundingBoxReal LHM_SPAWN_OBJ select 0 select 0, boundingBoxReal LHM_SPAWN_OBJ select 0 select 2]
    distance
        [boundingBoxReal LHM_SPAWN_OBJ select 1 select 0, boundingBoxReal LHM_SPAWN_OBJ select 1 select 2]
);
_aziCam = 0;
lhm_cam_shop_3D = "camera" camCreate [0, 0, 0];
lhm_cam_shop_3D cameraEffect ["Internal", "BACK","rendersurface"];
lhm_cam_shop_3D camSetFocus [-1, -1];
showCinemaBorder false;
lhm_cam_shop_3D camSetTarget LHM_SPAWN_OBJ;
lhm_cam_shop_3D camSetPos (LHM_SPAWN_OBJ modelToWorld [_distanceCam * sin _aziCam, _distanceCam * cos _aziCam, _distanceCam * 0.7]);
true setCamUseTI 0;
lhm_cam_shop_3D camCommit 0;
true setCamUseTI 0;

_aziCam = 0;
While{Bildschirm1 getvariable["watching",false]} do {




    _aziCam = _aziCam + 0.50;
    if(isnil "LHM_SPAWN_OBJ") exitWith {};
    lhm_cam_shop_3D camSetPos (LHM_SPAWN_OBJ modelToWorld [_distanceCam * sin _aziCam, _distanceCam * cos _aziCam, _distanceCam * 0.7]);
    lhm_cam_shop_3D camCommit 0.05;

    sleep 0.05;
};
lhm_cam_shop_3D cameraEffect ["TERMINATE","BACK"];
deleteVehicle LHM_SPAWN_OBJ;
LHM_SPAWN_OBJ = nil;
camDestroy  lhm_cam_shop_3D;
lhm_cam_shop_3D = nil;