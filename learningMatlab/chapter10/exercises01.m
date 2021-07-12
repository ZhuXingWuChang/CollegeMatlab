clear,clc
sound_velocity = @ (T) 49.02*sqrt(T);
R = sound_velocity(100);
disp(R)