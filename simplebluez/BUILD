cc_library(
    name = "simplebluez",
    copts = [
        "-std=c++17",
    ],
    srcs = [
        ":src/ProxyOrg.cpp",
        ":src/Logging.cpp",
        ":src/Agent.cpp",
        ":src/Device.cpp",
        ":src/Characteristic.cpp",
        ":src/Exceptions.cpp",
        ":src/ProxyOrgBluez.cpp",
        ":src/Service.cpp",
        ":src/Adapter.cpp",
        ":src/Bluez.cpp",
        ":src/interfaces/Adapter1.cpp",
        ":src/interfaces/Agent1.cpp",
        ":src/interfaces/GattDescriptor1.cpp",
        ":src/interfaces/GattCharacteristic1.cpp",
        ":src/interfaces/GattService1.cpp",
        ":src/interfaces/Device1.cpp",
        ":src/interfaces/Battery1.cpp",
        ":src/interfaces/AgentManager1.cpp",
    ],
    hdrs = glob([
        "include/simplebluez/*.h",
        "include/simplebluez/interfaces/*.h",
    ]),
    includes = [
        "include/",
    ],
    deps = [
        "//simpledbus",
    ],
    visibility = ["//visibility:public"],
)