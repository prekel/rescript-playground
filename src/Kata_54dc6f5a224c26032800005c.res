@genType
let stockList = (listOfArt, listOfCat) =>
  if Belt.Array.length(listOfArt) > 0 && Belt.Array.length(listOfCat) > 0 {
    let listOfArt = listOfArt->Belt.Array.map(a =>
      switch Js.String2.split(a, " ") {
      | [a, b] => (a->Js.String2.get(0), b->Belt.Int.fromString->Belt.Option.getExn)
      | _ => failwith("")
      }
    )

    let cats = listOfCat->Belt.Array.map(c => {
      let (_, i1) = listOfArt->Belt.Array.keep(((c1, _)) => c1 == c)->Belt.Array.unzip

      let c = c
      let i = i1->Belt.Array.reduce(0, \"+")
      "(" ++ (c ++ (" : " ++ (Belt.Int.toString(i) ++ ")")))
    })

    Js.Array.joinWith(" - ", cats)
  } else {
    ""
  }
