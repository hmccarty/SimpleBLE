"""
Macro for fetching external dependencies.
"""

load(
    "@bazel_tools//tools/build_defs/repo:git.bzl",
    "new_git_repository",
)

def fetch_deps():
    new_git_repository(
        name = "fmt",
        branch = "master",
        build_file="//bazel:third_party/BUILD.fmt",
        remote = "https://github.com/fmtlib/fmt",
    )