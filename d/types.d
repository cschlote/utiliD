/**
This module implements any types that are not explicitly defined by the D compiler, but are considered
standard D types.  See https://dlang.org/spec/type.html
*/
module d.types;

alias string  = immutable(char)[];
alias wstring = immutable(wchar)[];
alias dstring = immutable(dchar)[];
