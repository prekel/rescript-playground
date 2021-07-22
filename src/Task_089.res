let main = (figure: [#circle | #rectangle | #triangle], sides) => {
  switch (figure, sides) {
  | (#circle, [r]) => Js.Math._PI *. r ** 2.
  | (#rectangle, [a, b]) => a *. b
  | (#triangle, [a, b, c]) => {
      let p = (a +. b +. c) /. 2.
      sqrt(p *. (p -. a) *. (p -. b) *. (p -. c))
    }
  | _ => 0.
  }
  ->Js.Float.toFixedWithPrecision(~digits=2)
  ->Belt.Float.fromString
  ->Belt.Option.getWithDefault(0.)
}
