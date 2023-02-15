
// MARK: Challenge 1 - A simple generic data structure

// Write a generic stack structure that is usable in the following way:
// ```
// struct Paper {}
// var stack = Stack<Paper>()
// stack.push(Paper())
// stack.push(Paper())
// let topPaper = stack.pop()

// struct Block {}
// var stack = Stack<Block>()
// stack.push(Block())
// stack.push(Block())
// let topBlock = stack.pop()
// ```
// - NOTE: Keep in mind that `Paper` and `Block` should be able to be substituted with *any* type.

// YOUR CODE BELOW THIS POINT

struct Stack<Element> {
    var arr: [Element] = []
    mutating func push(_ element: Element) {
        arr.append(element)
    }
    
    mutating func pop() -> Element? {
        arr.popLast()
    }
}
