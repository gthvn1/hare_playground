use fmt;

export fn emulate(code: []u8) void = {
	// And print the opcode (2 bytes).
	for (let i = 0z; i < len(code) - 1; i += 2) {
		fmt::printfln("opcode> {0:.2x}{1:.2x}", code[i], code[i + 1])!;
	};
};
