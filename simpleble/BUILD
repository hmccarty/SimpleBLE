load("//bazel:defs.bzl", "gen_export_hdr")

config_setting(
    name = "macos",
    constraint_values = [
        "@platforms//os:macos",
    ],
)

objc_library(
    name = "simpleble_macos",
    copts = [
        "-ObjC++",
        "-std=c++17",
    ],
    srcs = [
        ":src/backends/macos/Utils.mm",
        ":src/backends/macos/AdapterBase.mm",
        ":src/backends/macos/AdapterBaseMacOS.mm",
        ":src/backends/macos/PeripheralBase.mm",
        ":src/backends/macos/PeripheralBaseMacOS.mm",
    ],
    hdrs = glob([
        "src/*.h",
        "include/simpleble/*.h",
        "src/builders/*.h",
        "src/external/*.hpp",
        "src/backends/common/*.h",
        "src/frontends/safe/*.h",
        "src/backends/macos/*.h",
    ]),
    includes = [
        "src/",
        "include/",
        "src/builders/",
        "src/external/",
        "src/backends/common/",
        "src/frontends/safe/",
        "src/backends/macos/",
    ],
    deps = [
        ":simpleble_export_hdr",
        "@fmt",
    ],
)

gen_export_hdr(
    name = "simpleble_export_hdr",
    pkg_name = "simpleble",
)

cc_library(
    name = "simpleble",
    copts = [
        "-std=c++17",
    ],
    srcs = [
        ":src/frontends/base/Adapter.cpp",
        ":src/frontends/base/Peripheral.cpp",
        ":src/frontends/base/Service.cpp",
        ":src/frontends/base/Characteristic.cpp",
        ":src/frontends/base/Descriptor.cpp",

        ":src/Exceptions.cpp",
        ":src/Utils.cpp",
        ":src/Logging.cpp",

        ":src/frontends/safe/AdapterSafe.cpp",
        ":src/frontends/safe/PeripheralSafe.cpp",

        ":src/builders/AdapterBuilder.cpp",
        ":src/builders/PeripheralBuilder.cpp",
        ":src/builders/ServiceBuilder.cpp",
        ":src/builders/CharacteristicBuilder.cpp",
        ":src/builders/DescriptorBuilder.cpp",

        ":src/backends/common/ServiceBase.cpp",
        ":src/backends/common/CharacteristicBase.cpp",
        ":src/backends/common/DescriptorBase.cpp",
    ],
    hdrs = glob([
        "src/*.h",
        "include/simpleble/*.h",
        "src/builders/*.h",
        "src/external/*.hpp",
        "src/backends/common/*.h",
        "src/frontends/safe/*.h",
    ]),
    includes = [
        "src/",
        "include/",
        "src/builders/",
        "src/external/",
        "src/backends/common/",
        "src/frontends/safe/",
    ],
    defines = [
        "SIMPLEBLE_VERSION=\\\"0.6.2\\\"",
    ],
    deps = [
        ":simpleble_export_hdr",
        "@fmt",
    ] + select({
        ":macos": [
            ":simpleble_macos"
        ]
    })
)

cc_test(
    name = "simpleble_tests",
    copts = [
        "-std=c++17",
    ],
    srcs = [
        ":test/src/main.cpp",
        ":test/src/test_utils.cpp",
    ],
    deps = [
        ":simpleble",
        "@com_google_googletest//:gtest_main",
    ]
)