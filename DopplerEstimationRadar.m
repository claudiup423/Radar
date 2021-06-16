c = 3*10^8;
freaquency = 77e9;

wavelength = c/freaquency;

doppler_shift = [3e3 -4.5e3 11e3 -3e3];

vr = doppler_shift*wavelength/2;

disp(vr);
