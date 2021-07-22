// Generated by ReScript, PLEASE EDIT WITH CARE

import * as Belt_List from "rescript/lib/es6/belt_List.js";
import * as Belt_Array from "rescript/lib/es6/belt_Array.js";

function razmen(money, coins) {
  var a = Belt_Array.reduce(coins, undefined, (function (acc, el) {
          if (acc !== undefined) {
            return acc;
          } else if (money > el) {
            return el;
          } else {
            return ;
          }
        }));
  if (a !== undefined) {
    return {
            hd: a,
            tl: razmen(money - a | 0, coins)
          };
  } else {
    return /* [] */0;
  }
}

var coins = [
  0.01,
  0.05,
  0.10,
  0.25,
  0.50,
  1.00,
  5.00,
  10.00
];

var cash = [
  10,
  50,
  100,
  500,
  1000
];

function main(coins) {
  var m = Belt_Array.reduce(coins, 0, (function (a, b) {
          return a + b | 0;
        }));
  var ca = razmen(m, cash);
  var mca = Belt_List.reduce(ca, 0, (function (a, b) {
          return a + b | 0;
        }));
  var co = razmen(mca, coins);
  return [
          Belt_List.toArray(ca),
          Belt_List.toArray(co)
        ];
}

export {
  razmen ,
  coins ,
  cash ,
  main ,
  
}
/* No side effect */