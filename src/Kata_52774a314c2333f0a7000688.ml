let rec validParentheses_aux parens_list acc =
  if acc < 0 then -1
  else
    match parens_list with
    | "(" :: o -> validParentheses_aux o (acc + 1)
    | ")" :: o -> validParentheses_aux o (acc - 1)
    | [] -> acc
    | _ -> assert false

let validParentheses parens =
  match
    validParentheses_aux (parens |> Js.String.split "" |. Belt.List.fromArray) 0
  with
  | 0 -> true
  | _ -> false
