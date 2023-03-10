
// MARK: What problem do generics solve?

func addInts(x: Int, y: Int) -> Int {
  return x + y
}

// `addInts(x: 3, y: 7)` = 10

func addDoubles(x: Double, y: Double) -> Double {
  return x + y
}

// `addDoubles(x: 2.5, y: 8.0)` = 10.5

// Notice any problem?






// MARK: Examples of existing generics in Swift
// Generics are the reason that all these structures work so well!

// Arrays
let myFavoriteIntegers: Array<Int> = [7, 888, 42]
let myFavoriteDoubles: Array<Double> = [1.6180, 2.718, 3.14159]
let myFavoriteStrings: Array<String> = ["raindrops on roses", "whiskers on kittens"]


// Dictionaries
enum Choice { case redPill, bluePill }
let consequences: Dictionary<Choice, String> = [
    .bluePill: "The story ends.",
    .redPill: "You stay in Wonderland."
]

// Optionals
struct Cat {}

func openTheBox() -> Cat? {
    Bool.random() ? Cat() : nil
}

let cat: Optional<Cat> = openTheBox()

// Results
enum Spell { case leviosa, leviosah }
extension String: Error {}

func cast(_ spell: Spell) -> Result<String, Error> {
    switch spell {
    case .leviosa: return .success("✨")
    case .leviosah: return .failure("It's 'leviosa' not 'leviosah'!")
    }
}







// MARK: Making our own generics

// A generic data structure (queue)

// A generic function (pairs)





// MARK: Constraining a generic type

// Write a function that gets the median of a list of values.


// Re-write the `add` functions from above using what we've learned (see also: ``AdditiveArithmetic``)








// MARK: Extending a generic type

// Add an extension to `queue` that uses `Element` (peek)






// MARK: Subclassing a generic type

// Make a generic `Box` class and a handful of subclasses
// NOTE: Subclasses of a generic type don't always have to be generic.



// Topics to discuss in Advanced Generics
//  - Opaque types (see: https://www.avanderlee.com/swift/generics-constraints/ and https://docs.swift.org/swift-book/LanguageGuide/OpaqueTypes.html)
//  - Conditional extensions on generics
//  - Why not just use protocols? (see: https://www.hackingwithswift.com/plus/intermediate-swift/understanding-generics-part-1 and https://developer.apple.com/videos/play/wwdc2016/416)
//  - Understanding function dispatch through generics, protocols, etc
//  - Phantom types (see: https://www.hackingwithswift.com/plus/advanced-swift/how-to-use-phantom-types-in-swift)
