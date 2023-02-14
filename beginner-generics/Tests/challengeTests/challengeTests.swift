import XCTest
@testable import challenges

final class ChallengeTests: XCTestCase {
    
    
    func testChallenge1() {
        struct MysteriousBlob {
            var sound: String
        }
        
        var stack = Stack<MysteriousBlob>()
        stack.push(MysteriousBlob(sound: "ominous"))
        stack.push(MysteriousBlob(sound: "squishy"))
        XCTAssertEqual(stack.pop()?.sound, "squishy")
        XCTAssertEqual(stack.pop()?.sound, "ominous")
    }
    
    
    func testChallenge2() {
        struct Stick {}
        struct FriedChicken {}
        struct AbyssalSpecter {}
        
        let batch = Batch<Stick, FriedChicken, AbyssalSpecter>(
            a: Stick(),
            b: FriedChicken(),
            c: AbyssalSpecter()
        )
        let (stick, friedChicken, abyssalSpecter) = split(batch)
        XCTAssertTrue(type(of: stick) == Stick.self)
        XCTAssertTrue(type(of: friedChicken) == FriedChicken.self)
        XCTAssertTrue(type(of: abyssalSpecter) == AbyssalSpecter.self)
    }
    
    func testChallenge3() {
        struct OtterHead: Head {}
        struct ArnoldArms: Arms {}
        struct DonkeyLegs: Legs {}
        struct DragonTail: Tail {}
        
        let _ = createChimera(
            head: OtterHead(),
            arms: ArnoldArms(),
            legs: DonkeyLegs(),
            tail: DragonTail()
        )
    }
    
    func testChallenge4() {
        struct UselessBrick: PowerSource {
            func harness() -> Power? { nil }
        }
        
        let magic = Magic(source: UselessBrick())
        let spell: Spell<UselessBrick> = magic.magicMissile()
        XCTAssertNil(spell.power.harness())
    }
    
}
