// MARK: Challenge 3 - A constrained generic function


// Create a function `createChimera` that is used as below:
// let chimera = createChimera(
//    head: OxHead(),
//    arms: ManArms(),
//    legs: ChickenLegs(),
//    tail: DragonTail()
// )
// The catch is that the `head`, `arms`, `legs` and `tail` must each
// conform respectively to the protocols:
protocol Head {}
protocol Arms {}
protocol Legs {}
protocol Tail {}

// You may create your own return type.

// NOTE: While it is possible to get the test to pass without constraining any type
// this challenge is specifically meant to have you constrain types so that
// incorrect types won't build.

// YOUR CODE BELOW THIS POINT
struct Chimera<H: Head, A: Arms, L: Legs, T: Tail> {
    var head: H
    var arms: A
    var legs: L
    var tail: T
}

func createChimera<H: Head, A: Arms, L: Legs, T: Tail>(head: H, arms: A, legs: L, tail: T) -> Chimera<H,A,L,T> {
    Chimera(head: head, arms: arms, legs: legs, tail: tail)
}
