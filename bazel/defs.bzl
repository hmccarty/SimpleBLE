"""
Defines helper / utility macros.
"""

load("@rules_cc//cc:defs.bzl", "cc_library")

def _gen_export_hdr_impl(ctx):
    ctx.actions.expand_template(
        template = ctx.file._template,
        output = ctx.outputs.export_hdr,
        substitutions = {
            "@PKG_NAME@": ctx.attr.pkg_name.upper(),
        },
    )

_gen_export_hdr = rule(
    implementation = _gen_export_hdr_impl,
    attrs = {
        "pkg_name": attr.string(mandatory = True),
        "_template": attr.label(
            default="//bazel:export_template.h.in",
            allow_single_file=True,
        ),
        "export_hdr": attr.output(mandatory = True),
    },
)


def gen_export_hdr(name, pkg_name, **kwargs):
    _gen_export_hdr(
        name = "{}_export".format(name),
        pkg_name = pkg_name,
        export_hdr = "export.h",
    )

    cc_library(
        name = name,
        includes = ["./"],
        hdrs = ["{}_export".format(name)],
        include_prefix = pkg_name,
        visibility = kwargs.get("visibility"),
    )