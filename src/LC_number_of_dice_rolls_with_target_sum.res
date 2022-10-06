let modulo = n => {
  mod(n, 1000000007)
}

let rec factorial = n => {
  if n == 0 {
    1
  } else {
    modulo(n * modulo(factorial(n - 1)))
  }
}

let numRollsToTarget = (n, k, target) => {
  let rec enum = (depth, current, sum) => {
    if depth == n {
      if sum == target {
        // Js.Console.log(" ---- " ++ Belt.Int.toString(sum))
        1
      } else {
        // Js.Console.log(" -  - " ++ Belt.Int.toString(sum))
        0
      }
    } else {
      let s = ref(0)
      for i in current to k {
        s := modulo(modulo(s.contents) + modulo(enum(depth + 1, i, sum + i)))
      }
      s.contents
    }
  }
  modulo(modulo(enum(0, 1, 0)) * modulo(factorial(n)))
}
