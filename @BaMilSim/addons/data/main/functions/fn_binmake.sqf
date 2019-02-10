

private ["_nmbr_needed","_bitmaker_array","_number_we_can_make","_last_nmbr","_achieved_nmbr","_binArray","_to_string"];
_nmbr_needed = param[0,0,[1445]];
_bitmaker_array = [1024,512,256,128,64,32,16,8,4,2,1];
_number_we_can_make = 2047;



if(_number_we_can_make < _nmbr_needed) then {

	while{true} do {
		_last_nmbr = _bitmaker_array select ((count _bitmaker_array) -1);
		_bitmaker_array pushback (_last_nmbr * 2);
		_number_we_can_make = _number_we_can_make + (_last_nmbr * 2);
		if(_number_we_can_make >= _nmbr_needed) exitWith {};
	};

};



_achieved_nmbr = 0;
_binArray = [];
{
	if((_nmbr_needed - _achieved_nmbr) >= _x) then {
		_achieved_nmbr = _achieved_nmbr + _x;
		_binArray pushback 1;
	} else {
		_binArray pushback 0;
	};
} foreach _bitmaker_array;

_to_string = "";
{_to_string = _to_string + str _x;} foreach _binArray;
_to_string