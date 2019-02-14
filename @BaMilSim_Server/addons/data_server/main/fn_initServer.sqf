

private ["_databaseName","_timeStamp","_extDBNotLoaded","_result","_npc"];


diag_log "----------------------------------------------------------------------------------------------------";
diag_log "---------------------------------- Starting BaMilSim Server Init ---------------------------------------";
diag_log "----------------------------------------------------------------------------------------------------";

waitUntil {sleep 1;time > 7};

diag_log "BaMilSim :: Waiting for Mission to start";

_databaseName = "BaMilSim";
BaMilSim_Server_loaded = true;
_timeStamp = diag_tickTime;
_extDBNotLoaded = 1;
if (isNil {uiNamespace getVariable "BaMilSim_sql_id"}) then {
    BaMilSim_sql_id = round(random(9999));
    BaMilSim_sql_id = compileFinal str BaMilSim_sql_id;
    uiNamespace setVariable ["BaMilSim_sql_id",BaMilSim_sql_id];
        try {
        _result = "extDB3" callExtension format ["9:ADD_DATABASE:%1",_databaseName];
        if (!(_result isEqualTo "[1]")) then {throw "extDB3: Error with Database Connection"};
        _result = "extDB3" callExtension format ["9:ADD_DATABASE_PROTOCOL:%2:SQL:%1:TEXT2",call (BaMilSim_sql_id),_databaseName];
        if (!(_result isEqualTo "[1]")) then {throw "extDB3: Error with Database Connection"};
    } catch {
        diag_log _exception;
        _extDBNotLoaded = [true, _exception];
    };
    if (_extDBNotLoaded isEqualType []) exitWith {};
    "extDB3" callExtension "9:LOCK";
    diag_log "extDB3: Connected to Database";
} else {
    BaMilSim_sql_id = uiNamespace getVariable "BaMilSim_sql_id";
    diag_log "extDB3: Still Connected to Database";
};


if (_extDBNotLoaded isEqualType []) exitWith {
    BaMilSim_Server_loaded = false;
    publicVariable "BaMilSim_Server_loaded";
};


diag_log "BaMilSim :: setting Variables";
[] call BaMilSim_fnc_vars;
diag_log "BaMilSim :: Variables set";
diag_log "BaMilSim :: Init Vehicles";
[] spawn BaMilSim_fnc_init_vehicles;
diag_log "BaMilSim :: Vehicles loaded";
[] call BaMilSim_fnc_init_map;
publicVariable "BaMilSim_Server_loaded";

0 spawn BaMilSIm_fnc_PBoats;

diag_log "----------------------------------------------------------------------------------------------------";
diag_log format ["               End of BaMilSim Server Init :: Total Execution Time %1 seconds ",(diag_tickTime) - _timeStamp];
diag_log "----------------------------------------------------------------------------------------------------";