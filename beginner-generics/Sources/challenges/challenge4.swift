// MARK: Challenge 4 - Extending a generic type

struct Power {}
protocol PowerSource {
    func harness() -> Power?
}

struct Magic<Source: PowerSource> {
    var source: Source
}

struct Spell<Source: PowerSource> {
    var power: Source
}

// Create an extension to `Magic` that adds a function called `magicMissile`
// that returns a Spell powered by the same `Source` as the Magic.
// It will be used like this:
// let magic = Magic(source: Sun())
// let spell: Spell<Sun> = magic.magicMissile()

// YOUR CODE BELOW THIS POINT
