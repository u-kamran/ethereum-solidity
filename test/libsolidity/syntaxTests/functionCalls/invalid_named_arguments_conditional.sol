contract C {
    function g(int x, int y) public pure returns (int) { return x - y; }
    function h(int y, int x) public pure returns (int) { return y - x; }

    function f() public pure {
        (true ? g : h)({x : 1, y : 2});
    }
}
// ----
// TypeError 7937: (200-212): Cannot call function with named arguments on conditional operator result
