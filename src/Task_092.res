let nextFib = acc => {
  switch acc {
  | list{} => list{1}
  | list{f1} => list{f1, f1}
  | list{f2, f1} => list{f1 + f2, f2, f1}
  | list{f3, f2, f1} => list{f2 + f3, f3, f2, f1}
  | list{fn3, fn2, fn1, ...rest} => list{fn3 + fn2, fn3, fn2, fn1, ...rest}
  }
}

let fibs = n => {
  let rec fibsRec = (acc, i) => {
    if n == i {
      acc
    } else {
      fibsRec(nextFib(acc), i + 1)
    }
  }
  fibsRec(list{}, 0)
}

let main = n => {
  fibs(n)->Belt.List.reverse->Belt.List.toArray
}
