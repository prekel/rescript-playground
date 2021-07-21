let main = (matrix) => {
    let sum = ar => ar->Belt.Array.reduce(0, (acc, el) => acc + el)
    matrix->Belt.SortArray.stableSortBy((a, b) => -Pervasives.compare(a->sum, b->sum))
}
