// The Swift Programming Language
// https://docs.swift.org/swift-book

#if canImport(Reachability)
import Reachability

public enum MyLibrary {
    public static let reachability = try! Reachability()
    public static var isReachable: Bool {
        reachability.connection != .unavailable
    }
}
#else
public enum MyLibrary {
    public static let isReachable = false
}
#endif
