


private ["_config","_current_texture","_next_skin","_index"];
_config = [
	"logo.jpg",
	"pic1.jpg",
	"pic2.jpg",
	"pic3.jpg",
	"pic4.jpg",
	"pic5.jpg",
	"pic6.jpg",
	"pic7.jpg",
	"pic8.jpg"

];


_index_given = param[0,-1,[1337]];
_camera = param[1,false,[false]];

iF(_camera) exitWith {
	0 spawn BaMilSim_fnc_project_camera;
};


if!(_index_given isEqualTo -1) exitWith {
	_next_skin = _config select _index_given;
	{_x setObjectTexture[0,_next_skin];} foreach [BS1,BS2,BS3,BS4,BS5,BS6];
};


_current_texture = (getObjectTextures BS1) select 0;
_current_texture = _current_texture select [27];
_next_skin = "";
_index = _config find _current_texture;
if(_index isEqualTo -1) then {
	_index = 0;
} else {
	_index = _index + 1;
	if(_index > ((count _config)-1)) then {
		_index = 0;

	};
};


[_index,_camera] remoteexec["BaMilSim_fnc_PP",-2];