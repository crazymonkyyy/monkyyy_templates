import monkyyytemplate;
mixin createmonkyyytemplate!"foo";
mixin createmonkyyytemplate!"faz";

unittest{
	struct secret{
		enum message="i like cake";
	}
	foo!(secret) bar;
}
unittest{
	struct secret{
		enum message="i hate cake";
	}
	faz!(secret) bar;
}
unittest{
	alias leet=foo!().T;
	alias haxor=faz!().T;
	import std.stdio;
	assert(leet.message =="i hate cake");
	assert(haxor.message=="i hate cake");
}