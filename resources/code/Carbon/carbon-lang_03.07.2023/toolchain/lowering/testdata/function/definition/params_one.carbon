// Part of the Carbon Language project, under the Apache License v2.0 with LLVM
// Exceptions. See /LICENSE for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
// AUTOUPDATE
// RUN: %{carbon-run-lowering}
// CHECK:STDOUT: ; ModuleID = '{{.*}}/toolchain/lowering/testdata/function/definition/params_one.carbon'
// CHECK:STDOUT: source_filename = "{{.*}}/toolchain/lowering/testdata/function/definition/params_one.carbon"
// CHECK-EMPTY:
// CHECK:STDOUT: define void @Foo(i32 %a) {
// CHECK:STDOUT: entry:
// CHECK:STDOUT: }

fn Foo(a: i32) {}
