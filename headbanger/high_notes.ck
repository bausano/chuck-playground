// Connect sine oscillator to D/A convertor (sound card).
SinOsc s => dac;

200::ms => dur tempo;

Std.mtof(64) => float note_e4;
Std.mtof(65) => float note_f4;
Std.mtof(72) => float note_c4;

while (true) {
    // Start by playing open e string and then tap f4.
    note_e4 => s.freq;
    tempo => now;
    note_f4 => s.freq;
    tempo => now;
    tempo => now;
    tempo => now;

    // Stop for a bit.
    0 => s.freq;
    tempo => now;
    tempo => now;

    // Play open e string, tap f4 and pull off.
    note_e4 => s.freq;
    tempo => now;
    note_f4 => s.freq;
    tempo => now;
    note_e4 => s.freq;
    tempo => now;
    tempo => now;

    // Plays c4 twice.
    0.5 => s.gain;
    note_c4 => s.freq;
    tempo => now;
    0 => s.freq;
    tempo => now;
    note_c4 => s.freq;
    tempo => now;
    tempo => now;
}