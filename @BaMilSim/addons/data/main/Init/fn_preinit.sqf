if (isServer) exitWith {};
if(!isMultiplayer) exitWith {};
//setViewDistance 15;
//setObjectViewDistance 15;
//setShadowDistance 15;
disableRemoteSensors true;

{
	_event = _x;
	_namespaceId = "BIS_stackedEventHandlers_";
	_namespaceEvent = _namespaceId + _event;
	_data = missionNameSpace getVariable [_namespaceEvent, []];
	{
		private "_itemId";
		_itemId	= [_x, 0, "", [""]] call BIS_fnc_param;
		[_itemId,_event] call bis_fnc_removeStackedEventHandler;
	} forEach _data;
} forEach ["oneachframe", "onpreloadstarted", "onpreloadfinished", "onmapsingleclick", "onplayerconnected", "onplayerdisconnected"];


if (!isDedicated) then {
   // if (!isNumber (missionConfigFile >> "briefing")) exitWith {};
    //if (getNumber (missionConfigFile >> "briefing") == 1) exitWith {};
    0 = [] spawn {
        waitUntil {
            if (getClientState == "BRIEFING READ") exitWith {true};
            if (!isNull findDisplay 53) exitWith {
                ctrlActivate (findDisplay 53 displayCtrl 1);
                findDisplay 53 closeDisplay 1;
                true
            };
            false
        };
    };
};