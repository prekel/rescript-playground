let main = (numbers_list1, numbers_list2) => {
  Belt.Array.zip(numbers_list1, numbers_list2)->Belt.Array.map(((a, b)) => min(a, b))
}
