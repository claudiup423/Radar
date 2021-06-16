c = 3*10^8;
delta_r = 1;
b_sweep = c/(2 *delta_r);

radar_max_range = 300;
Ts = 5.5 * (radar_max_range*2/c);

beat_freq = [0 1.1e6 13e6 24e6];

calculated_range = c * Ts *beat_freq/(2*b_sweep);

disp(calculated_range);