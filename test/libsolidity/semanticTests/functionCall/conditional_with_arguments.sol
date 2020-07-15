contract C {
    function g(int x, int y) public pure returns (int) { return x - y; }
    function h(int y, int x) public pure returns (int) { return y - x; }

    function f() public pure returns (int) {
        return (true ? g : h)(1, 2);
    }
}
// ----
// f() -> -1
