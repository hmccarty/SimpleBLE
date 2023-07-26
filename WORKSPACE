workspace(name="SimpleBLE")

load("//bazel:third_party/defs.bzl", "fetch_deps")
fetch_deps()

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
http_archive(
  name = "com_google_googletest",
  urls = ["https://github.com/google/googletest/archive/5ab508a01f9eb089207ee87fd547d290da39d015.zip"],
  strip_prefix = "googletest-5ab508a01f9eb089207ee87fd547d290da39d015",
)