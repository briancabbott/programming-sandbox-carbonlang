// Part of the Carbon Language project, under the Apache License v2.0 with LLVM
// Exceptions. See /LICENSE for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception

#include "explorer/common/error_builders.h"

#include <gtest/gtest.h>

#include "explorer/common/source_location.h"

namespace Carbon::Testing {
namespace {

auto ToString(const Error& err) -> std::string {
  std::string result;
  llvm::raw_string_ostream out(result);
  err.Print(out);
  return result;
}

TEST(ErrorBuildersTest, ProgramError) {
  Error err = ProgramError(SourceLocation("x", 1)) << "test";
  EXPECT_EQ(err.location(), "x:1");
  EXPECT_EQ(err.message(), "test");
  EXPECT_EQ(ToString(err), "x:1: test");
}

}  // namespace
}  // namespace Carbon::Testing
