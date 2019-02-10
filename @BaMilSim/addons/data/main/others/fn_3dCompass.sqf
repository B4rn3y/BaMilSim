{
_center = eyePos player;

_x params ["_letter", "_color", "_offset1"];
    drawIcon3D [
        "",
        _color,
        aslToAGL (_center vectorAdd (_offset1 vectorMultiply .8)),
        0,
        0,
        0,
        _letter,
        2,
        0.05,
        "PuristaMedium"
        ];
    if !(cameraView isEqualTo "INTERNAL")then{
        drawIcon3D [
        "",
        _color,
        aslToAGL (_center vectorAdd (_offset1 vectorMultiply .4)),
        0,
        0,
        0,
        ".",
        2,
        0.05,
        "PuristaMedium"
        ];
    };
} count [
        ["N",[1,1,1,1],[0,1,0]],
        ["NE",[1,1,1,0.3],[0.707,0.707,0]],
        ["E",[1,1,1,1],[1,0,0]],
        ["SE",[1,1,1,0.3],[0.707,-0.707,0]],
        ["S",[1,1,1,1],[0,-1,0]],
        ["SW",[1,1,1,0.3],[-0.707,-0.707,0]],
        ["W",[1,1,1,1],[-1,0,0]],
        ["NW",[1,1,1,0.3],[-0.707,0.707,0]]
        ];