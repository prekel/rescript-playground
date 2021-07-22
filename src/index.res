let _ = () => {
  open Task_088

  Js.Console.log(razmen(57, coins1)->Belt.List.toArray)

  Js.Console.log(
    main([
      0.01,
      0.01,
      0.05,
      0.50,
      0.50,
      0.50,
      1.,
      1.,
      1.,
      1.,
      5.,
      5.,
      5.,
      10.,
      10.,
      10.,
      10.,
    ]),
  )
}

let _ = {
  open Task_088

  Js.Console.log(razmen(11, cash1)->Belt.List.toArray)
  Js.Console.log(razmen(11, coins1)->Belt.List.toArray)

  Js.Console.log(main([0.10, 0.01]))
}
