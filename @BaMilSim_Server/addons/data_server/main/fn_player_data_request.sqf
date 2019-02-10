
private ["_playerside","_getplayeruid","_requester","_resolution","_steamName","_productVersion","_new_inserted","_query","_tickTime","_queryResult","_name"];
_playerside = param[0,sideUnknown,[sideUnknown]];
_name = param[1,"",[""]];
_getplayeruid = param[2,"",[""]];
_requester = param[3,objNull,[objNull]];
_resolution = param[4,[],[[]]];
_steamName = param[5,"",[""]];
_productVersion = param[6,[],[[]]];
_new_inserted = param[7,false,[false]];
if(isnull _requester) exitWith {diag_log "BaMilSim Server :: Objnull at data Request";};
if(_playerside isEqualTo sideUnknown || _name isEqualTo "" || _getplayeruid isEqualTo "") exitWith {
    diag_log format["BaMilSim Error :: Data Request Error for Object %1",_requester];
    [1,true] remoteExecCall["BaMilSim_fnc_mainInit",[_requester]];
};








switch (_playerside) do
{


     default
    {
        _query = format["Select uid, gear, stats, adminlevel, donatorlevel, alive, position, playtime,blacklist from players where pid = '%1'",_getplayeruid];
    };


};



if(isnil "_query") exitWith {
    diag_log format["BaMilSim Error :: ""_query"" isnil! for UID: %1 and Object %2 with side %3! ::>>:: Starting Init on Requester again!",_getplayeruid,_requester,_playerside];
    [1,true] remoteExecCall["BaMilSim_fnc_mainInit",_requester];
};




_tickTime = diag_tickTime;
_queryResult = [_query,2] call BaMilSim_fnc_db_sync;
waitUntil {!isNil "_queryResult"};
diag_log "------------- Client Query Request -------------";
diag_log format["QUERY: %1",_query];
diag_log format["Time to complete: %1 (in seconds)",(diag_tickTime - _tickTime)];
diag_log format["Result: %1",_queryResult];
diag_log "------------------------------------------------";






if(typeName _queryResult isEqualTo "STRING" || count _queryResult isEqualTo 0) exitWith {
    [_name,_getplayeruid,_requester,_resolution,_steamName,_productVersion,_playerside] spawn BaMilSim_fnc_insert_player;
};




[(if(_new_inserted) then {2} else {0}),_queryResult] remoteExecCall ["BaMilSim_fnc_mainInit",_requester];




















