contract Test {
        struct RecursiveStruct {
                address payable d ;
                mapping ( uint => address payable ) c ;
                mapping ( uint => address payable [ ] ) d ;
        }
        function func ( ) private pure {
                RecursiveStruct [ 1 ] memory val ;
                val ;
        }
}
// ----
// DeclarationError 2333: (157-198): Identifier already declared.
// TypeError 6651: (268-300): Data location must be "storage" for variable, but "memory" was given.
