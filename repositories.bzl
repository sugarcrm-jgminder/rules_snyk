load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def rules_snyk_repos():
    # python support for depgraph processing
    http_archive(
        name = "rules_python",
        sha256 = "c68bdc4fbec25de5b5493b8819cfc877c4ea299c0dcb15c244c5a00208cde311",
        strip_prefix = "rules_python-0.31.0",
        url = "https://github.com/bazelbuild/rules_python/releases/download/0.31.0/rules_python-0.31.0.tar.gz",
    )
    #http_archive(
    #    name = "rules_python",
    #    sha256 = "a868059c8c6dd6ad45a205cca04084c652cfe1852e6df2d5aca036f6e5438380",
    #    strip_prefix = "rules_python-0.14.0",
    #    url = "https://github.com/bazelbuild/rules_python/archive/refs/tags/0.14.0.tar.gz",
    #)
