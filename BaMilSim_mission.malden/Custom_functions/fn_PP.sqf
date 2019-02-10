


private ["_config","_current_texture","_next_skin","_index"];
_config = [
	"logo.jpg",
	"bild01.jpg",
	"bild02.jpg",
	"bild03.jpg",
	"bild04.jpg",
	"bild05.jpg",
	"bild06.jpg",
	"bild07.jpg",
	"bild08.jpg",
	"bild09.jpg",
	"bild10.jpg",
	"bild11.jpg",
	"bild12.jpg"

];


_index_given = param[0,-1,[1337]];
_camera = param[1,false,[false]];

iF(_camera) exitWith {
	0 spawn BaMilSim_fnc_project_camera;
};


if!(_index_given isEqualTo -1) exitWith {
	_next_skin = _config select _index_given;
	{_x setObjectTexture[0,_next_skin];} foreach [Bildschirm1,Bildschirm2,Bildschirm3,Bildschirm4,Bildschirm5,Bildschirm6,Bildschirm7,Bildschirm8];
};


_current_texture = (getObjectTextures Bildschirm1) select 0;
_current_texture = _current_texture select [29];
_next_skin = "";
_index = _config find _current_texture;
if(_index isEqualTo -1) then {
	_index = 0;
} else {
	_index = _index + 1;
	if(_index > ((count _config)-1) && !(Bildschirm1 getvariable["watching",false])) then {
		Bildschirm1 setvariable["watching",true,true];
		_index = 0;
		_camera = true;

	};
	if(_index > ((count _config)-1) && (Bildschirm1 getvariable["watching",false])) then {
		Bildschirm1 setvariable["watching",nil,true];
		_index = 0;
		_camera = false;

	};
};
if(!_camera && (Bildschirm1 getvariable["watching",false])) then {
	Bildschirm1 setvariable["watching",nil,true];
};

[_index,_camera] remoteexec["BaMilSim_fnc_PP",-2];