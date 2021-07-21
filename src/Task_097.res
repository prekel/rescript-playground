let main = (a, b1, b2, x) => {
  (a /. (b1 +. b2) *. x *. 1000.)
  ->Js.Float.toFixedWithPrecision(~digits=2)
  ->Belt.Float.fromString
  ->Belt.Option.getExn
}
