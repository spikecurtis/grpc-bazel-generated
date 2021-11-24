def _genproto_impl(ctx):
    foo = ctx.actions.declare_file("foo.proto")
    ctx.actions.write(
        output = foo,
        content = """
syntax = "proto2";

package rpc;

message Foo {
  optional int64 start = 1;
  optional int64 end = 2;
}


"""
    )
    bar = ctx.actions.declare_file("bar.proto")
    ctx.actions.write(
        output = bar,
        content = """
syntax = "proto2";

package rpc;

import "foo.proto";

service Bar {
    rpc Baz(Foo) returns (Foo);
}

"""
)
    outs = [foo, bar]
    return [DefaultInfo(files = depset(outs))]

genproto = rule(
    implementation = _genproto_impl,
)