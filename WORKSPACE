workspace(name = "upx")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

# Commit: daf6ace7cfeacd6a83e9ff2ed659f416537b6c74
# Date: 2021-06-07 16:41:49 +0000 UTC
# URL: https://github.com/bazelbuild/rules_cc/commit/daf6ace7cfeacd6a83e9ff2ed659f416537b6c74
#
# Merge pull request #105 from keith:ks/add-armeabi_cc_toolchain_config.bzl-to-macos-config
#
# PiperOrigin-RevId: 377937583
# Change-Id: Id64f0fad71fa795cf065327f4cde3e8e956b281d
# Size: 134352 (134 kB)
http_archive(
    name = "rules_cc",
    sha256 = "34b2ebd4f4289ebbc27c7a0d854dcd510160109bb0194c0ba331c9656ffcb556",
    strip_prefix = "rules_cc-daf6ace7cfeacd6a83e9ff2ed659f416537b6c74",
    urls = ["https://github.com/bazelbuild/rules_cc/archive/daf6ace7cfeacd6a83e9ff2ed659f416537b6c74.tar.gz"],
)

load("//:repositories.bzl", "repositories")

repositories()
