load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def repositories():
    if "bazel_skylib" not in native.existing_rules():
        http_archive(
            name = "bazel_skylib",
            sha256 = "1dde365491125a3db70731e25658dfdd3bc5dbdfd11b840b3e987ecf043c7ca0",
            urls = [
                "https://mirror.bazel.build/github.com/bazelbuild/bazel-skylib/releases/download/0.9.0/bazel_skylib-0.9.0.tar.gz",
                "https://github.com/bazelbuild/bazel-skylib/releases/download/0.9.0/bazel_skylib-0.9.0.tar.gz",
            ],
        )

    if "net_zlib_zlib" not in native.existing_rules():
        # Commit: a2ea4abad01e0bd86eec20d7ee970ab2544e0413
        # Date: 2021-03-14 19:02:28 +0000 UTC
        # URL: https://github.com/vstakhov/libucl/commit/a2ea4abad01e0bd86eec20d7ee970ab2544e0413
        #
        # Merge pull request #253 from bapt/master
        #
        # Mark + as unsafe which fixes export a key with + in config mode
        # Size: 2038139 (2.0 MB)
        http_archive(
            name = "com_github_vstakhov_libucl",
            sha256 = "de2e3158bba1d4b55f7fdd4e712bee84bbd3a927b5cdda9137513f6f22c71667",
            strip_prefix = "libucl-a2ea4abad01e0bd86eec20d7ee970ab2544e0413",
            urls = ["https://github.com/vstakhov/libucl/archive/a2ea4abad01e0bd86eec20d7ee970ab2544e0413.tar.gz"],
            build_file = "@//:BUILD.libucl",
        )

    if "net_zlib_zlib" not in native.existing_rules():
        http_archive(
            name = "net_zlib_zlib",
            build_file = "@//:BUILD.zlib",
            sha256 = "c3e5e9fdd5004dcb542feda5ee4f0ff0744628baf8ed2dd5d66f8ca1197cb1a1",
            strip_prefix = "zlib-1.2.11",
            urls = [
                "https://mirror.bazel.build/zlib.net/zlib-1.2.11.tar.gz",
                "https://zlib.net/zlib-1.2.11.tar.gz",
            ],
        )

    SOURCEFORGE_MIRRORS = ["phoenixnap", "newcontinuum", "cfhcable", "superb-sea2", "cytranet", "iweb", "gigenet", "ayera", "astuteinternet", "pilotfiber", "svwh"]

    if "org_lzma_lzma" not in native.existing_rules():
        http_archive(
            name = "org_lzma_lzma",
            build_file = "@//:BUILD.lzma",
            sha256 = "71928b357d0a09a12a4b4c5fafca8c31c19b0e7d3b8ebb19622e96f26dbf28cb",
            strip_prefix = "xz-5.2.3",
            urls = [
                "https://%s.dl.sourceforge.net/project/lzmautils/xz-5.2.3.tar.gz" % m
                for m in SOURCEFORGE_MIRRORS
            ],
        )
