load(":genproto.bzl", "genproto")
load("@com_github_grpc_grpc//bazel:cc_grpc_library.bzl", "cc_grpc_library")

genproto(
    name = "generated_proto",
)

proto_library(
    name = "foo_bar_proto",
    srcs = [":generated_proto"],
    deps = [
    ],
)

cc_proto_library(
    name = "foo_bar_cc_proto",
    deps = [":foo_bar_proto"],
)

cc_grpc_library(
    name = "foo_bar_cc_grpc",
    srcs = [":foo_bar_proto"],
    grpc_only = True,
    visibility = ["//visibility:public"],
    deps = [":foo_bar_cc_proto"],
)