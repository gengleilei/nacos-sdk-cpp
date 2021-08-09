#load("//:bazel/copts.bzl", "DEFAULT_COPTS", "TEST_COPTS")

package(default_visibility = ["//visibility:public"])

cc_library(
  name = "nacos_cpp_lib",
  srcs = glob([
    "src/**/*.cpp",
  ]),
  hdrs = glob([
    "include/**/*.h",
    "src/**/*.h",
  ]),
  includes = [
    "include"
  ],
  deps = [
    "@com_github_curl//:curl",
  ],
)