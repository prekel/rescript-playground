let fastSum sums (l, r) = 
  let la = sums |. Belt.Array.get (l - 1) and ra = sums |. Belt.Array.get r in
  match la, ra with 
  | Some l, Some r -> r - l 
  | None, Some r -> r 
  | _ -> failwith "1"

let maxSum arr range = 
  let sums = arr |. Belt.Array.reduce [] (fun state b -> 
    match state with 
    | [] -> [b]
    | a :: _ -> (a + b) :: state) |. Belt.List.toArray |. Belt.Array.reverse in
  let rangeSums = range |. Belt.Array.map (fun b -> fastSum sums b) in
  Belt.Array.reduce rangeSums (rangeSums |. Belt.Array.getExn 0) max
