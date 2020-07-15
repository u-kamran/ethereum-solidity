contract C {
    function f() public pure {
        var ();
        var (,);
    }
}
// ----
// ParserError 6933: (52-55): Expected primary expression.
