contract C {
    function f() returns(var) {}
    function f() returns(var x) {}
    function f() returns(var x, uint y) {}
    function f() returns(uint x, var y) {}
    function f() returns(var x, var y) {}
    function f() public pure returns (var storage) {}
    function f() public pure returns (var storage x) {}
    function f() public pure returns (var storage x, var storage y) {}
}
// ----
// ParserError 3546: (38-41): Expected type name
