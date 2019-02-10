


{
	diag_log str [_foreachindex,_x];
	diag_log str[_foreachindex,typename _x];
} foreach _this;


if(!isnil "BaMilSim_adminlevel" || !isnil "BaMilSim_donatorlevel") exitWith {
	BaMilSim_VARS_SET = true;
	[profilename,getplayeruid player,profileNameSteam,format["Vars set before Login @ Player %1",player]] remoteexec["BaMilSim_fnc_logToDB",2];
	[player,format["Der Spieler %1(%2) Steamname %3 hatte eine compilefinal Variable vor dem Einloggen gesetzt",profilename,player,profileNameSteam]] remoteexec["BaMilSim_fnc_admin_inform",-2];
};


switch(playerside) do {


	default {
		_BaMilSim_uid = param[0,-1,[1337,""]];
		_gear = param[1,"",["",[]]];
		_stats = param[2,[],["",[]]];
		_adminlvel = param[3,0,[1337]];
		_donorlevel = param[4,0,[1337]];
		_alive = param[5,0,[1337]];
		_position = param[6,[],[[],""]];
		_playtime = param[7,0,[1337,""]];
		_blacklist = param[8,0,[1337,""]];



		BaMilSim_UID = _BaMilSim_uid;
		BaMilSim_stats = ([_stats] call BaMilSim_fnC_mtoArray);
		if(typeName BaMilSim_stats isEqualTo "STRING") then {BaMilSim_stats = call compile[format["%1", BaMilSim_stats],true];};
		BaMilSim_gear = [_gear] call BaMilSim_fnc_mToArray;
		if(typeName BaMilSim_gear isEqualTo "STRING") then {BaMilSim_gear = call compile[format["%1", BaMilSim_gear],true];};

		BaMilSim_adminlevel = compileFinal str _adminlvel;
		BaMilSim_donatorlevel = compileFinal str _donorlevel;
		BaMilSim_blacklist = _blacklist;

		BaMilSim_alive = _alive;
		BaMilSim_position = [_position] call BaMilSim_fnc_mToArray;
		if(typeName BaMilSim_position isEqualTo "STRING") then {BaMilSim_position = call compile[format["%1", BaMilSim_position],true];};
		BaMilSim_playtime = call compile[_playtime,true];



	};
};
diag_log format["BaMilSim Alive: %1 - Typename %2",BaMilSim_alive,typename BaMilSim_alive];
diag_log format["BaMilSim Position: %1 - Typename %2",BaMilSim_position,typename BaMilSim_position];
if(BaMilSim_alive isEqualTo 0) then {
	BaMilSim_gear = [];
	BaMilSim_position = [];
} else {
	player setdamage (BaMilSim_stats select 0);
};

diag_log format["BaMilSim Alive: %1 - Typename %2",BaMilSim_alive,typename BaMilSim_alive];
diag_log format["BaMilSim Position: %1 - Typename %2",BaMilSim_position,typename BaMilSim_position];