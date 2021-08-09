load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive", "http_file")

all_content = """filegroup(name = "all", srcs = glob(["**"]), visibility = ["//visibility:public"])"""

def include_third_party_repositories():
    http_archive(
        name = "com_github_curl",
        strip_prefix = "curl-curl-7_76_0",
        urls = ["https://github.com/curl/curl/archive/refs/tags/curl-7_76_0.tar.gz"],
        build_file = "@com_github_nacos_cpp//:bazel/curl.BUILD",
        sha256 = "7687d77577c7c16e394cd9a79abc3f80128b9b323be56ee7eed0ded203c0c53b",
    )

    http_archive(
        name = "rules_foreign_cc",
        strip_prefix = "rules_foreign_cc-0.0.9",
        urls = ["https://github.com/bazelbuild/rules_foreign_cc/archive/refs/tags/0.0.9.zip"],
    )