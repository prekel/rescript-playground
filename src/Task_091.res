let charCode = c => c->Js.String2.charCodeAt(0)->Belt.Float.toInt

let a = 1072
let yo = 1105
let ye = 1077
let ya = 1103

let num = letter => {
  let code = charCode(letter)
  if code <= ye {
    code - a + 1
  } else if code == yo {
    7
  } else {
    code - a + 2
  }
}

let main = str => {
  let str = str->Js.String2.toLowerCase

  let rec loop = (i, op, l, r) => {
    if str->Js.String2.length == i {
      op->Belt.Option.map(op => op(l, r))
    } else {
      let c = str->Js.String2.get(i)
      let op' = switch c {
      | "+" => Some((a, b) => a + b)
      | "-" => Some((a, b) => a - b)
      | "*" => Some((a, b) => a * b)
      | "/" => Some((a, b) => a / b)
      | _ => None
      }
      switch (op, op') {
      | (None, None) => loop(i + 1, op', l + num(c), r)
      | (None, Some(_)) => loop(i + 1, op', l, r)
      | (Some(_), Some(_)) => failwith("")
      | (Some(_), None) => loop(i + 1, op, l, r + num(c))
      }
    }
  }
  loop(0, None, 0, 0)->Belt.Option.getExn
}
