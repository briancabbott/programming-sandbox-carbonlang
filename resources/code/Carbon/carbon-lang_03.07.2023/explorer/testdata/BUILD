# Part of the Carbon Language project, under the Apache License v2.0 with LLVM
# Exceptions. See /LICENSE for license information.
# SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception

load("//bazel/sh_run:rules.bzl", "glob_sh_run")
load("//bazel/testing:lit.bzl", "glob_lit_tests")

glob_lit_tests(
    data = [
        "//bazel/testing:merge_output",
        "//explorer",
        "@llvm-project//llvm:FileCheck",
        "@llvm-project//llvm:not",
    ],
    driver = "lit.cfg.py",
    test_file_exts = ["carbon"],
)

glob_sh_run(
    args = ["$(location //explorer)"],
    data = ["//explorer"],
    file_exts = ["carbon"],
)

glob_sh_run(
    args = [
        "$(location //explorer)",
        "--parser_debug",
        "--trace_file=-",
    ],
    data = ["//explorer"],
    file_exts = ["carbon"],
    run_ext = "verbose",
)

filegroup(
    name = "carbon_files",
    srcs = glob(["**/*.carbon"]),
    visibility = ["//visibility:public"],
)
