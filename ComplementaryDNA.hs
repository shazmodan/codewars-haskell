module ComplementaryDNA where
--In DNA strings, symbols "A" and "T" are complements of each other, as "C" and "G". You have function with one side of the DNA (string, except for Haskell); you need to get the other complementary side. DNA strand is never empty or there is no DNA at all (again, except for Haskell).

data Base = A | T | G | C
type DNA = [Base]

getComplement :: Base -> Base
getComplement base = 
    case base of
        A -> T
        T -> A
        G -> C
        C -> G

dnaStrand :: DNA -> DNA
dnaStrand = map getComplement