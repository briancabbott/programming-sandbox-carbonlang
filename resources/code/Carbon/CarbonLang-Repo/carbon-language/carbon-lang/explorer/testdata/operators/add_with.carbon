// Part of the Carbon Language project, under the Apache License v2.0 with LLVM
// Exceptions. See /LICENSE for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
// AUTOUPDATE
// RUN: %{explorer-run}
// RUN: %{explorer-run-trace}
// CHECK:STDOUT: result: 6

package ExplorerTest api;

class A { var n: i32; }

external impl A as AddWith(i32) where .Result = A {
  fn Op[me: Self](rhs: i32) -> A { return {.n = me.n + rhs}; }
}

fn Main() -> i32 {
  var a: A = {.n = 5};
  a = a + 1;
  return a.n;
}
