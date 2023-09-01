MIDIClient.init;

~midiOut = MIDIOut.newByName("Scarlett 18i8 USB", "Scarlett 18i8 USB");

~dirt.soundLibrary.addMIDI(\mydevice, ~midiOut);

~lc = LinkClock.new.latency_(Server.default.latency);

~lc.numPeers;

~ltmc = LinkToMidiClock(~midiOut, ~lc);

~ltmc.start;