cc_import(
    name = "dbus-1",
    hdrs = ["dbus.h"],
    shared_library = "libdbus-1.so",
)

cc_library(
    name = "simpledbus",
    copts = [
        "-std=c++17",
    ],
    srcs = [
        ":src/base/Connection.cpp",
        ":src/base/Exceptions.cpp",
        ":src/base/Holder.cpp",
        ":src/base/Logging.cpp",
        ":src/base/Message.cpp",
        ":src/base/Path.cpp",
        ":src/advanced/Interface.cpp",
        ":src/advanced/Proxy.cpp",
        ":src/interfaces/ObjectManager.cpp",
    ],
    hdrs = glob([
        "src/base/*.h",
        "include/simpledbus/advanced/*.h",
        "include/simpledbus/base/*.h",
        "include/simpledbus/external/*.hpp",
        "include/simpledbus/interfaces/*.h",
    ]),
    includes = [
        "src/base/",
        "include/",
    ],
    deps = [
        "@dbus",
        "@fmt",
    ],
    visibility = ["//visibility:public"],
)