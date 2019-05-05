/**
This module implements any types that are not explicitly defined by the D compiler, but are considered
standard D types.  See https://dlang.org/spec/type.html
*/
module d.types;

alias string  = immutable(char)[];
alias wstring = immutable(wchar)[];
alias dstring = immutable(dchar)[];

// QUESTION:  Do we really want to use the `size_t` convention?  It's a carry-over from C and the `_t` convention
// is not idiomatic-D.  I'd prefer to come up with something else.
