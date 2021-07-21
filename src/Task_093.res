let minMaxIndex = (numbers, comp) => {
  numbers->Belt.Array.reduceWithIndex((numbers->Belt.Array.getExn(0), 0), ((mc, mi), c, i) =>
    if comp(c, mc) {
      (c, i)
    } else {
      (mc, mi)
    }
  )
}

let minIndex = numbers => minMaxIndex(numbers, (a, b) => a < b)
let maxIndex = numbers => minMaxIndex(numbers, (a, b) => a >= b)

let main = numbers => {
  if Belt.Array.length(numbers) < 3 {
    0
  } else {
    let (_, minIndex) = numbers->minIndex
    let (_, maxIndex) = numbers->maxIndex
    let (minIndex', maxIndex') = (min(minIndex, maxIndex), max(minIndex, maxIndex))

    numbers->Belt.Array.reduceWithIndex(0, (acc, el, ind) => {
      if minIndex' < ind && ind < maxIndex' {
        acc + el
      } else {
        acc
      }
    })
  }
}
