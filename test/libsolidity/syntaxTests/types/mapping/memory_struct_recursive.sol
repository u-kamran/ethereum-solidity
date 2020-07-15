contract Test {
	struct S {
		T[] t;
	}

	struct T {
		U[] u;
	}

	struct U {
		S[] s;
		mapping (uint => S) map;
	}

	function f() public {
		S memory s;
	}
}
// ----
// TypeError 6651: (143-153): Data location must be "storage" for variable, but "memory" was given.
