Monkyyy templates allow you to store types across scopes :D

Truely a marvel of the highest quality of compile time engineering, representing hundards of man hours of work.

The highest quality of syntax design, for this highly requested feature that I promoise will always work 100% of the time.

HAVE F.U.N.

```d
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
}```