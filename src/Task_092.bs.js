// Generated by ReScript, PLEASE EDIT WITH CARE

import * as Belt_List from "rescript/lib/es6/belt_List.js";

function nextFib(acc) {
  if (!acc) {
    return {
            hd: 1,
            tl: /* [] */0
          };
  }
  var match = acc.tl;
  var f1 = acc.hd;
  if (!match) {
    return {
            hd: f1,
            tl: {
              hd: f1,
              tl: /* [] */0
            }
          };
  }
  var match$1 = match.tl;
  var f1$1 = match.hd;
  if (!match$1) {
    return {
            hd: f1$1 + f1 | 0,
            tl: {
              hd: f1,
              tl: {
                hd: f1$1,
                tl: /* [] */0
              }
            }
          };
  }
  var rest = match$1.tl;
  var f1$2 = match$1.hd;
  if (rest) {
    return {
            hd: f1 + f1$1 | 0,
            tl: {
              hd: f1,
              tl: {
                hd: f1$1,
                tl: {
                  hd: f1$2,
                  tl: rest
                }
              }
            }
          };
  } else {
    return {
            hd: f1$1 + f1 | 0,
            tl: {
              hd: f1,
              tl: {
                hd: f1$1,
                tl: {
                  hd: f1$2,
                  tl: /* [] */0
                }
              }
            }
          };
  }
}

function fibs(n) {
  var _acc = /* [] */0;
  var _i = 0;
  while(true) {
    var i = _i;
    var acc = _acc;
    if (n === i) {
      return acc;
    }
    _i = i + 1 | 0;
    _acc = nextFib(acc);
    continue ;
  };
}

function main(n) {
  return Belt_List.toArray(Belt_List.reverse(fibs(n)));
}

export {
  nextFib ,
  fibs ,
  main ,
  
}
/* No side effect */