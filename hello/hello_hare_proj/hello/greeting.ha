use types::c;

export fn greeting(name: str) void = {
	say_hello(c::fromstr(name));
};

@symbol("say_hello") fn say_hello(name: *const c::char) void;
