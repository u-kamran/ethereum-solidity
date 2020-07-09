{
	memoryinit(0)
	function f() {
	    let $fx
	    let $fy := 42
	    sstore($fx, $fy)
	    $fx := 21
	}
	function g(gx) {
	    let $gx, $gy := tuple2()
	    { $gx, $gy := tuple2() }
	    { $gx, gx := tuple2() }
	    { gx, $gy := tuple2() }
	}
	function h(hx, hy, hz, hw) {
	    let $hx, $hy, $hz, $hw := tuple4()
	    { hx, $hy, hz, $hw := tuple4() }
	    { $hx, $hy, hz, hw := tuple4() }
	}
	function tuple2() -> a, b {}
	function tuple4() -> a, b, c, d {}
    f()
    g(0)
    h(1, 2, 3, 4)
}
// ----
// step: fakeMemoryEscalator
//
// {
//     memoryinit(0x80)
//     function f()
//     {
//         mstore(0x20, 0)
//         mstore(0x00, 42)
//         sstore(mload(0x20), mload(0x00))
//         mstore(0x20, 21)
//     }
//     function g(gx)
//     {
//         let $gx_1, $gy_2 := tuple2()
//         mstore(0x20, $gy_2)
//         mstore(0x00, $gx_1)
//         {
//             let $gx_3, $gy_4 := tuple2()
//             mstore(0x20, $gy_4)
//             mstore(0x00, $gx_3)
//         }
//         {
//             let $gx_5, gx_6 := tuple2()
//             mstore(0x00, $gx_5)
//             gx := gx_6
//         }
//         {
//             let gx_7, $gy_8 := tuple2()
//             mstore(0x20, $gy_8)
//             gx := gx_7
//         }
//     }
//     function h(hx, hy, hz, hw)
//     {
//         let $hx_9, $hy_10, $hz_11, $hw_12 := tuple4()
//         mstore(0x60, $hw_12)
//         mstore(0x00, $hz_11)
//         mstore(0x20, $hy_10)
//         mstore(0x40, $hx_9)
//         {
//             let hx_13, $hy_14, hz_15, $hw_16 := tuple4()
//             mstore(0x60, $hw_16)
//             mstore(0x20, $hy_14)
//             hz := hz_15
//             hx := hx_13
//         }
//         {
//             let $hx_17, $hy_18, hz_19, hw_20 := tuple4()
//             mstore(0x20, $hy_18)
//             mstore(0x40, $hx_17)
//             hw := hw_20
//             hz := hz_19
//         }
//     }
//     function tuple2() -> a, b
//     { }
//     function tuple4() -> a_1, b_2, c, d
//     { }
//     f()
//     g(0)
//     h(1, 2, 3, 4)
// }
