let fastSum sums (l, r) = 
  let la = sums |. Belt.Array.get (l - 1) and ra = sums |. Belt.Array.get r in
  match la, ra with 
  | Some l, Some r -> r - l 
  | None, Some r -> r 
  | _ -> failwith ""
 
let maxSum arr range = 
  let rec sumsRec acc ind = 
    if arr |. Belt.Array.length = ind then
      acc
    else 
    match acc with 
    | [] -> sumsRec [arr |. Belt.Array.getExn ind] (ind + 1)
    | a :: b -> sumsRec ((a + (arr |. Belt.Array.getExn ind)) :: b) (ind + 1)
  in 
  let sums = sumsRec [] 0 |. Belt.List.reverse |. Belt.List.toArray in
  let rangeSums = range |. Belt.Array.map (fun b -> fastSum sums b) in
  Belt.Array.reduce rangeSums (rangeSums |. Belt.Array.getExn 0) max
