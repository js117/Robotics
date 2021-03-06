function [Ro] = RotXYZMatrix(xAngle,yAngle,zAngle)
Rx = [1,                0,          0;
    0,                cos(xAngle), -sin(xAngle);
    0,                sin(xAngle), cos(xAngle);];

Ry = [cos(yAngle),       0,          sin(yAngle);
    0,                1,          0;
    -sin(yAngle),      0,          cos(yAngle);];

Rz = [cos(zAngle),       -sin(zAngle),0;
    sin(zAngle)        cos(zAngle), 0;
    0,                0,          1;];
R = Rx*Ry*Rz;

R = [R, [0;0;0];
    [0,0,0],1];
Ro = R;
end