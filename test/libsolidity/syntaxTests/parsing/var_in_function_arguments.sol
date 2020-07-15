contract C {
    function f(var) public pure {}
    function f(var x) public pure {}
    function f(var x, var y) public pure {}
    function f(uint x, var y) public pure {}
    function f(var x, uint y) public pure {}
    function f(var storage) public pure {}
    function f(var storage x) public pure {}
    function f(var storage x, var storage y) public pure {}
}
// ----
// ParserError 3546: (28-31): Expected type name
