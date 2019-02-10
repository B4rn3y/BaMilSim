
params[
 "_text",
 ["_error",false,[false]],
 ["_speed","",[""]],
 ["_sound",true,[true]]
];
if(isnil "BaMilSim_open_notifications") then {BaMilSim_open_notifications = []};
disableSerialization;
_display = finddisplay 46;
if(_sound) then {
	if (_error) then {
	playSound "3DEN_notificationWarning";
	} else {
	playSound "HintExpand";
	};
};

private _headerColor = if (_error) then {
 	[1,0,0,1];
} else {
	[1,0.502,0,1];
};
if (_text isEqualType "") then {
 _text = parseText _text;
};
private _Header = _display ctrlCreate ["RscText", -1];
_Header ctrlSetPosition [0.005 * safezoneW + safezoneX, 0.31 * safezoneH + safezoneY, 0.13 * safezoneW, 0.011 * safezoneH];
_Header ctrlSetBackgroundColor _headerColor;
_Header ctrlSetFade 1;
_Header ctrlCommit 0;
_Header ctrlSetFade 0;
_Header ctrlCommit 0.4;
private _TextField = _display ctrlCreate ["RscStructuredText", -1];
_TextField ctrlSetStructuredText _text;
_TextField ctrlSetPosition [0.005 * safezoneW + safezoneX, 0.321 * safezoneH + safezoneY,0.13 * safezoneW, 0.5];
_TextField ctrlCommit 0;
_TextField ctrlSetPosition [0.005 * safezoneW + safezoneX, 0.321 * safezoneH + safezoneY,0.13 * safezoneW, ((ctrlTextHeight _TextField)+ (0.005 * safezoneH))];
_TextField ctrlSetBackgroundColor [0,0,0,0.75];
_TextField ctrlSetFade 1;
_TextField ctrlCommit 0;
_TextField ctrlSetFade 0;
_TextField ctrlCommit 0.4;
[_TextField,_Header,_speed] spawn {
 disableSerialization;
 if (_this select 2 isEqualTo "fast") then {
 uiSleep 5;
 } else {
 uiSleep 15;
 };
 private _TextField = _this select 0;
 private _Header = _this select 1;
 _TextField ctrlSetFade 1;
 _TextField ctrlCommit 0.3;
 _Header ctrlSetFade 1;
 _Header ctrlCommit 0.3;
 uiSleep 0.3;
 ctrlDelete _Header;
 ctrlDelete _TextField;
};
private _posText = (ctrlPosition (_TextField)) select 1;
private _posHeader = (ctrlPosition (_Header)) select 1;
private _textHigh = (ctrlPosition (_TextField)) select 3;
if (count BaMilSim_open_notifications > 0) then {
 private _activeNotifications = 0;
 {
 private _ctrlHeader = _x select 0;
 private _ctrlText = _x select 1;
 if (!isNull _ctrlHeader && !isNull _ctrlText) then {
 _ctrlHeader ctrlSetPosition [0.005 * safezoneW + safezoneX, (_posHeader + _textHigh + 1.5*(0.011 * safezoneH))];
 _ctrlText ctrlSetPosition [0.005 * safezoneW + safezoneX, (_posText + _textHigh + 1.5*(0.011 * safezoneH))];
 _ctrlHeader ctrlCommit 0.25;
 _ctrlText ctrlCommit 0.25;
 _posText = (_posText + _textHigh + 1.5*(0.011 * safezoneH));
 _posHeader = (_posHeader + _textHigh + 1.5*(0.011 * safezoneH));
 _textHigh = (ctrlPosition (_ctrlText)) select 3;
 if (_activeNotifications > 3) then {
 _ctrlText ctrlSetFade 1;
 _ctrlHeader ctrlSetFade 1;
 _ctrlText ctrlCommit 0.2;
 _ctrlHeader ctrlCommit 0.2;
 };
 _activeNotifications = _activeNotifications + 1;
 };
 } forEach BaMilSim_open_notifications;
};
BaMilSim_open_notifications = ([[_Header,_TextField]] + BaMilSim_open_notifications) select {!isNull (_x select 0) && !isNull (_x select 1)};