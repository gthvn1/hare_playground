use fmt;
use os;

export fn main() void = {
	// We are expecting a ROMs as parameter. Just ignore others ones.
	if (len(os::args) == 1) {
		fmt::fatalf("USAGE: {} <ROMS>", os::args[0]);
	};

	let roms = os::args[1];
	fmt::printfln("Emulating {0}", roms)!;

	emulate(roms);

};
