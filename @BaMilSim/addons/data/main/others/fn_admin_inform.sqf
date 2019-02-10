if(isServer || !hasInterface)exitWith {};
if(isnil "BaMilSim_adminlevel") exitWith {};
if((call BaMilSim_adminlevel) < 1) exitWith {};
if(!(profileNamespace getvariable["Admin_info",true])) exitWith {};

_player = param[0,player,[player]];
_what_HE_DID = param[1,"Unbekannt",[""]];

_text = parsetext format["Admin INFO:<br/><t align='left'>Person:</t> <t align='right'>%1</t><br/><t align='left'>Objekt:</t><t align='right'>%2</t><br/><t align='left'>PID:</t><t align='right'>%3</t><br/><br/>%4",name _player,_player,getplayeruid _player,_what_HE_DID];


disableSerialization;


_display = finddisplay 46;
_textfeld = _display ctrlCreate ["RscStructuredText", -1];
_textfeld ctrlSetStructuredText _text;
_textfeld ctrlSetPosition [0.41 * safezoneW + safezoneX, -0.22 * safezoneH + safezoneY,0.18 * safezoneW,((ctrlTextHeight _textfeld)+ (0.005 * safezoneH))];
_textfeld ctrlsetfade 1;
_textfeld ctrlSetBackgroundColor [0,0,0,0];
_textfeld ctrlSetTextColor [1,0,0,1];
_textfeld ctrlCommit 0;
_textfeld ctrlSetPosition [0.41 * safezoneW + safezoneX, 0.32 * safezoneH + safezoneY,0.18 * safezoneW,  ((ctrlTextHeight _textfeld)+ (0.005 * safezoneH))];
_textfeld ctrlsetfade 0;
_textfeld ctrlCommit 10;
[] spawn {sleep 4;playSound "3DEN_notificationWarning";};

[_player] spawn {
_BOY = param[0,objNull,[objNull]];
disableSerialization;
_display = finddisplay 46;
_map = _display ctrlCreate ["RscMapControl", -1];
_map ctrlSetPosition [1.21 * safezoneW + safezoneX, 0.32 * safezoneH + safezoneY,0.18 * safezoneW,(0.3 * safezoneH)];
_map ctrlsetfade 1;
_map ctrlCommit 0;
sleep 4;
_map ctrlSetPosition [0.71 * safezoneW + safezoneX, 0.32 * safezoneH + safezoneY,0.18 * safezoneW,(0.3 * safezoneH)];
_map ctrlsetfade 0;
_map ctrlCommit 2;
sleep 4;

_marker = createMarkerLocal [format["MkrMs_%1",round(random(100000))], (visiblePosition _BOY)];
_marker setMarkerTypeLocal "Mil_dot";
_marker setMarkerColorLocal "ColorOrange";
_marker setMarkerTextLocal format ["%1", name _BOY];
_map ctrlMapAnimAdd[1,0.3,[(((getpos _BOY) select 0)+9222.41),(((getpos _BOY) select 1)-4202.3),((getpos _BOY) select 2)]];
ctrlMapAnimCommit _map;
sleep 30;
_map ctrlSetPosition [1.21 * safezoneW + safezoneX, 0.32 * safezoneH + safezoneY,0.18 * safezoneW,(0.3 * safezoneH)];
_map ctrlsetfade 1;
_map ctrlCommit 10;
sleep 10;
ctrlDelete _map;
deleteMarkerLocal _marker;
};


sleep 38;
_textfeld ctrlSetPosition [0.41 * safezoneW + safezoneX, -0.22 * safezoneH + safezoneY,0.18 * safezoneW,((ctrlTextHeight _textfeld)+ (0.005 * safezoneH))];
_textfeld ctrlsetfade 1;
_textfeld ctrlCommit 10;
sleep 10;
ctrlDelete _textfeld;















