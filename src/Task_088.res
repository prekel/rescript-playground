let rec razmen = (money, coins) => {
  let a = Belt.Array.reduce(coins, None, (acc, el) =>
    switch acc {
    | Some(_) => acc
    | _ =>
      if money > el {
        Some(el)
      } else {
        None
      }
    }
  )
  switch a {
  | Some(a) => list{a, ...razmen(money - a, coins)}
  | _ => list{}
  }
}

let coins = [0.01, 0.05, 0.10, 0.25, 0.50, 1.00, 5.00, 10.00]
let cash = [10, 50, 100, 500, 1000]

let main = coins => {
  let m = coins->Belt.Array.reduce(0, (a, b) => a + b)
  let ca = razmen(m, cash)
  let mca = ca->Belt.List.reduce(0, (a, b) => a + b)
  let co = razmen(mca, coins)
  (ca->Belt.List.toArray, co->Belt.List.toArray)
}
