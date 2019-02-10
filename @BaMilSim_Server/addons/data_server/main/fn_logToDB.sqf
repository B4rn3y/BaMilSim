

private ["_getplayeruid","_steamname","_message","_query"];
_name = param[0,"",[""]];
_getplayeruid = param[1,"",[""]];
_steamname = param[2,"",[""]];
_message = param[3,"",[""]];




_query = format["INSERT INTO log (name, pid, steamname, happening) VALUES('%1','%2','%3','%4')",
	_name,
	_getplayeruid,
	_steamname,
	_message
];


[_query,1] call valor_fnc_db_sync;


