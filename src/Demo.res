@react.component
let make = () => {
  let (a, _) = React.useState(() => 123)
  <div> {React.string("Hello World" ++ Belt.Int.toString(a))} </div>
}
