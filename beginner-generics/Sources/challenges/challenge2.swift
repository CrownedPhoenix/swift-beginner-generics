// MARK: Challenge 2 - A simple generic function


// Given this generic structure, a "batch" of 3 things, write
// a function called `split` that will split the batch into its constituent parts.
struct Batch<A, B, C> {
    let a: A
    let b: B
    let c: C
}

// The calling API will look like:
// let batch = Batch<Int, Double, String>(a: 42, b: 3.14, c: "planck")
// let (a, b, c) = split(batch)

// YOUR CODE BELOW THIS POINT
