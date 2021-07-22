open Test

test("Add", () => {
  assertion((a, b) => a === b, 1, 1, ~operator="Int equals", ~message="One equals one")
})
