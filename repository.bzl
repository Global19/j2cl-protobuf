"""Bazel rule for loading external repository deps for j2cl_proto."""

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

_JSINTEROP_BASE_VERSION = "master"

def load_j2cl_proto_repo_deps():
    http_archive(
        name = "com_google_jsinterop_base",
        strip_prefix = "jsinterop-base-%s" % _JSINTEROP_BASE_VERSION,
        url = "https://github.com/google/jsinterop-base/archive/%s.zip" % _JSINTEROP_BASE_VERSION,
    )
