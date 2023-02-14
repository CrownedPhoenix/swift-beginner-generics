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

// NOTE: While it is possible to get the test to pass without constraining any type
// this challenge is specifically meant to have you constrain types so that
// incorrect types won't build.

// YOUR CODE BELOW THIS POINT

