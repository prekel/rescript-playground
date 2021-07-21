// Generated by ReScript, PLEASE EDIT WITH CARE

import * as Caml from "rescript/lib/es6/caml.js";
import * as Belt_Array from "rescript/lib/es6/belt_Array.js";
import * as Belt_SortArray from "rescript/lib/es6/belt_SortArray.js";

function main(matrix) {
  var sum = function (ar) {
    return Belt_Array.reduce(ar, 0, (function (acc, el) {
                  return acc + el | 0;
                }));
  };
  return Belt_SortArray.stableSortBy(matrix, (function (a, b) {
                return -Caml.caml_int_compare(sum(a), sum(b)) | 0;
              }));
}

export {
  main ,
  
}
/* No side effect */
