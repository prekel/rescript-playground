// Generated by ReScript, PLEASE EDIT WITH CARE

import * as List from "rescript/lib/es6/list.js";

function main(a, b) {
  return List.init((b - a | 0) + 1 | 0, (function (i) {
                return i + a | 0;
              }));
}

export {
  main ,
  
}
/* No side effect */
