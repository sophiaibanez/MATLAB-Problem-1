x1 = input('Enter value for X1:  ');
y1 = input('For Y1:  ');
x2 = input('For X2:  ');
y2 = input('For Y2:  ');
x3 = input('For X3:  ');
y3 = input('And for Y3:  ');
fprintf('Points: (%.4f,%.4f), (%.4f,%.4f) and (%.4f,%.4f). \n', x1,y1,x2,y2,x3,y3)

A = x1*(y2-y3) - y1*(x2-x3) + x2*y3 - x3*y2;
D = (x1^2 + y1^2)*(y3-y2) + (x2^2 + y2^2)*(y1-y3) + (x3^2 + y3^2)*(y2-y1);
E = (x1^2 + y1^2)*(x2-x3) + (x2^2 + y2^2)*(x3-x1) + (x3^2 + y3^2)*(x1-x2);
F = (x1^2 + y1^2)*(x3*y2 - x2*y3) + (x2^2 + y2^2)*(x1*y3 - x3*y1) + (x3^2 + y3^2)*(x2*y1 - x1*y2);

h = -(D/(2*A));
k = -(E/(2*A));
r = sqrt((D^2 + E^2 -4*A*F)/(4*A^2));
fprintf('Given 3 points, the circle formed has its at center (%.4f,%.4f) with radius of %.4f units. \n', h,k,r)
fprintf('The vector would be: V[%.f,%.f,%.f].\n',D/A,E/A,F/A)