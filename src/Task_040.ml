let main a b =
  Belt.List.makeBy (b - a + 1) (fun i -> i + a)
  |. Belt.List.toArray

let _ = Js.Console.log @@ main 3 9
