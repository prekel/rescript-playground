let stockList listOfArt listOfCat =
  if Belt.Array.length listOfArt > 0 && Belt.Array.length listOfCat > 0 then
    let listOfArt =
      listOfArt
      |. Belt.Array.map (fun a ->
             match Js.String2.split a " " with
             | [| a; b |] ->
                 ( a |. Js.String2.get 0,
                   b |. Belt.Int.fromString |. Belt.Option.getExn )
             | _ -> failwith "")
    in
    let cats =
      listOfCat
      |. Belt.Array.map (fun c ->
             let _, i1 =
               listOfArt
               |. Belt.Array.keep (fun (c1, _) -> c1 = c)
               |. Belt.Array.unzip
             in
             let c = c in
             let i = i1 |. Belt.Array.reduce 0 ( + ) in
             "(" ^ c ^ " : " ^ Belt.Int.toString i ^ ")")
    in
    Js.Array.joinWith " - " cats
  else ""
