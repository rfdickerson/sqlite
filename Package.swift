import PackageDescription

#if os(Linux)
let package = Package(
    name: "SQLite",
    targets: [Target(name: "SQLite", dependencies: [.Target(name: "CSQLiteLinux")]),
              Target(name: "CSQLiteLinux")]
)
#else
let package = Package(
    name: "SQLite",
    targets: [Target(name: "SQLite", dependencies: [.Target(name: "CSQLiteMac")]),
              Target(name: "CSQLiteMac")]
)
#endif
