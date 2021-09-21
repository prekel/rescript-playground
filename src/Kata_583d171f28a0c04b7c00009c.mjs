// Generated by ReScript, PLEASE EDIT WITH CARE

import * as Belt_List from "rescript/lib/es6/belt_List.js";
import * as Belt_Array from "rescript/lib/es6/belt_Array.js";
import * as Pervasives from "rescript/lib/es6/pervasives.js";

function fastSum(sums, param) {
  var la = Belt_Array.get(sums, param[0] - 1 | 0);
  var ra = Belt_Array.get(sums, param[1]);
  if (la !== undefined) {
    if (ra !== undefined) {
      return ra - la | 0;
    } else {
      return Pervasives.failwith("1");
    }
  } else if (ra !== undefined) {
    return ra;
  } else {
    return Pervasives.failwith("1");
  }
}

function maxSum(arr, range) {
  var sums = Belt_Array.reverse(Belt_List.toArray(Belt_Array.reduce(arr, /* [] */0, (function (state, b) {
                  if (state) {
                    return {
                            hd: state.hd + b | 0,
                            tl: state
                          };
                  } else {
                    return {
                            hd: b,
                            tl: /* [] */0
                          };
                  }
                }))));
  var rangeSums = Belt_Array.map(range, (function (b) {
          return fastSum(sums, b);
        }));
  return Belt_Array.reduce(rangeSums, Belt_Array.getExn(rangeSums, 0), (function (prim0, prim1) {
                if (prim0 > prim1) {
                  return prim0;
                } else {
                  return prim1;
                }
              }));
}

export {
  fastSum ,
  maxSum ,
  
}
/* No side effect */
