// Generated by ReScript, PLEASE EDIT WITH CARE

import * as Belt_List from "rescript/lib/es6/belt_List.js";

function main(a, b) {
  return Belt_List.toArray(Belt_List.makeBy((b - a | 0) + 1 | 0, (function (i) {
                    return i + a | 0;
                  })));
}

console.log(main(3, 9));

export {
  main ,
  
}
/*  Not a pure module */