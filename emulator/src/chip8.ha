use fmt;
use fs;
use io;
use os;

export fn emulate(roms: str) void = {
	// Let's try to open code
	const f = match (os::open(roms)) {
		case let f: io::file => yield f;
		case => fmt::fatalf("Unable to open {}", roms);
	};
	defer io::close(f)!;

	// Now we can read the code
	let code: [1024]u8 = [0...];
	const code_size = match (io::read(f, code)) {
		case let s: size => yield s;
		case => fmt::fatalf("Unable to read code");
	};

	fmt::printfln("Read {0} bytes", code_size)!;

	// Some sanity check
	if (code_size == len(code)) {
		fmt::fatalf("buffer is full, code maybe truncated");
	};

	if (code_size % 2 != 0) {
		fmt::fatalf("Failed to check opcode size");
	};

	// And print the opcode (2 bytes).
	for (let i = 0z; i < code_size - 1; i += 2) {
		fmt::printfln("opcode> {0:.2x}{1:.2x}", code[i], code[i + 1])!;
	};
};
