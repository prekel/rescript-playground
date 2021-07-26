let rec razmen = (money, coins) => {
  let a = Belt.Array.reduceU(coins, None, (. acc, el) =>
    switch acc {
    | Some(_) => acc
    | _ =>
      if money >= el {
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

let coins1 = [0_01, 0_05, 0_10, 0_25, 0_50, 1_00, 5_00, 10_00]->Js.Array.reverseInPlace
let cash1 = [10_00, 50_00, 100_00, 500_00, 1000_00]->Js.Array.reverseInPlace

let toc = (. a) => a->Belt.Int.toFloat /. 100.

let main = coins2 => {
  let coins = coins2->Belt.Array.mapU((. a) => (a *. 100.)->Belt.Float.toInt)
  let m = coins->Belt.Array.reduceU(0, (. a, b) => a + b)
  let ca = razmen(m, cash1)
  let mca = ca->Belt.List.reduceU(0, (. a, b) => a + b)
  let co = razmen(m - mca, coins1)
  (ca->Belt.List.mapU(toc)->Belt.List.toArray, co->Belt.List.mapU(toc)->Belt.List.toArray)
}
