// Connect sine oscillator to D/A convertor (sound card).
SinOsc s => dac;

200::ms => dur tempo;

Std.mtof(50) => float note_d3;
Std.mtof(45) => float note_a2;

while (true) {
    // Play the open d string.
    note_d3 => s.freq;
    tempo => now;
    tempo => now;
    tempo => now;
    tempo => now;

    // Stop for a little.
    0 => s.freq;
    tempo => now;
    tempo => now;

    // Play the open d string again.
    note_d3 => s.freq;
    tempo => now;
    tempo => now;
    tempo => now;
    tempo => now;

    // Plays a2 twice.
    1.0 => s.gain;
    note_a2 => s.freq;
    tempo => now;
    0 => s.freq;
    tempo => now;
    note_a2 => s.freq;
    tempo => now;
    tempo => now;
}