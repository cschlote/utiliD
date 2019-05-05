# utiliD
A D library with absolutely no dependencies intended for boostrapping the D compiler, D runtime, and other libraries or for bare-metal systems programming.

I'm still working out the precise vision for this library, so bear with me as I will likely change my mind often until something concrete emerges.

## The Rules
1. No dependencies whatsoever.
2. No dynamic heap memory allocation.  Dynamic stack memory allocation is ok, but could probably be avoided too.

## Help Wanted
I am much too busy trying to fix problems with the D compiler and I'm not going to be able to work on this much in the near future.
If you like the general idea of this library, please help.  Also, I don't have much experience with Phobos, so I will need help choosing what to take from existing D implementations and what to leave.

### Tasks

#### CI Infrastruction
We need to set up a CI that can test pull requests, verify coverage, documentation, etc... across multiple platforms and architecture.  That would accelerate any future progress and is considered the highest priority right now.

#### Software Building Blocks
Many implementations will eventually be lowered to a few basic software building blocks that copy or compare memory. Therefore it would be great to have such low-level software building blocks in this library as long as they adhere to [The Rules](#Rules). Candidates include [`memcpy`](http://www.cplusplus.com/reference/cstring/memcpy/), [`memset`](http://www.cplusplus.com/reference/cstring/memset/?kw=memset), and [`memcmp`](http://www.cplusplus.com/reference/cstring/memcmp/).  Beware, though.  This is D; not C.  We want idiomatic D implementations that leverage the power of D's excellent design by introspections capabilities.  See [memcpyD](https://github.com/JinShil/memcpyD) for a proof of concept.

#### Copy Existing D Implementations
This library could reasonably take quite a few implementations from phobos and druntime (e.g. [`std.meta`](https://dlang.org/phobos/std_meta.html), [`std.traits`](https://dlang.org/phobos/std_traits.html), and much more) as long as they adhere to [The Rules](#Rules), but I want to be careful not to repeat the mistakes of the past.  Therefore, I prefer only copying over those implementations that are considered *high quality* right now.
