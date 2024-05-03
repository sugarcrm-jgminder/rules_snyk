# Declare the local Bazel workspace.
workspace(
    # If your ruleset is "official"
    # (i.e. is in the bazelbuild GitHub org)
    # then this should just be named "rules_snyk"
    # see https://docs.bazel.build/versions/main/skylark/deploying.html#workspace
    name = "rules_snyk",
)

load("//:repositories.bzl", "rules_snyk_repos")
rules_snyk_repos()

load("@rules_python//python:repositories.bzl", "py_repositories")

py_repositories()

# Create a central repo that knows about the dependencies needed from
# requirements.txt
load("@rules_python//python:pip.bzl", "pip_parse")

pip_parse(
    name = "snyk_py_deps",
    requirements_lock = "//third_party:requirements.txt",
)

load("@snyk_py_deps//:requirements.bzl", install_snyk_deps = "install_deps")
install_snyk_deps()

