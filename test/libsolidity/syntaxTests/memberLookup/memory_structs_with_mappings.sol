contract Test {
	struct S { uint8 a; mapping(uint => uint) b; uint8 c; }
	S s;
	function f() public {
		S memory x;
	}
}
// ----
// TypeError 6651: (104-114): Data location must be "storage" for variable, but "memory" was given.
