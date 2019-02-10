_pos = _this select 1;
_vehicle = _this select 2;
if!(_pos isEqualTo "driver") exitWith {};
if(_vehicle iskindof "Landvehicle" || _vehicle iskindof "AIR" || _vehicle iskindof "SHIP") then {
	_var = _vehicle getvariable "Update_this";
	if(isnil "_var") then {
		_vehicle setvariable["Update_this",true,true];
	};
};