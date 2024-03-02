use fmt;
use os;

export fn main() void = {
	// We are expecting a ROMs as parameter. Just ignore others ones.
	if (len(os::args) == 1) {
		fmt::printfln("USAGE: {0} <ROMS>", os::args[0])!;
		os::exit(1);
	};

	let roms = os::args[1];
	fmt::printfln("Reading ROM {0}", roms)!;
};
