load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

#
#http_archive(
#    name = "rules_proto",
#    sha256 = "66bfdf8782796239d3875d37e7de19b1d94301e8972b3cbd2446b332429b4df1",
#    strip_prefix = "rules_proto-4.0.0",
#    urls = [
#        "https://mirror.bazel.build/github.com/bazelbuild/rules_proto/archive/refs/tags/4.0.0.tar.gz",
#        "https://github.com/bazelbuild/rules_proto/archive/refs/tags/4.0.0.tar.gz",
#    ],
#)
#
#load("@rules_proto//proto:repositories.bzl", "rules_proto_dependencies", "rules_proto_toolchains")
#
#rules_proto_dependencies()
#
#rules_proto_toolchains()

##### gRPC Rules for Bazel
##### See https://github.com/grpc/grpc/blob/master/src/cpp/README.md#make
http_archive(
    name = "com_github_grpc_grpc",
    strip_prefix = "grpc-888a10d8a6a30ec0acd7c3cbe9656eb2aa6d237f",
    urls = [
        "https://github.com/grpc/grpc/archive/888a10d8a6a30ec0acd7c3cbe9656eb2aa6d237f.tar.gz",
    ],
)

load("@com_github_grpc_grpc//bazel:grpc_deps.bzl", "grpc_deps")

grpc_deps()

# Not mentioned in official docs... mentioned here https://github.com/grpc/grpc/issues/20511
load("@com_github_grpc_grpc//bazel:grpc_extra_deps.bzl", "grpc_extra_deps")

grpc_extra_deps()
