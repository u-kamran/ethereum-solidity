contract Test {
    struct S {
        uint8 a;
        mapping(uint256 => uint256) b;
        uint8 c;
    }
    S s;

    function f() public returns (uint256) {
        S memory x;
    }
}

// ----
// TypeError 6651: (172-182): Data location must be "storage" for variable, but "memory" was given.
