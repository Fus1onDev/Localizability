import Foundation

public struct Localized {
    public typealias Keys = AnyKey
    
    public class AnyKey {
        public typealias Key = Localized.Key

        public let name: String

        fileprivate init(name: String) {
            self.name = name
        }
    }
    
    public final class Key: AnyKey {
        public init(_ key: String) {
            super.init(name: key)
        }
    }
    
    public static subscript(key: Localized.Key) -> String {
        return NSLocalizedString(key.name, comment: "")
    }
    
    public static subscript(key: Localized.Key, args: CVarArg...) -> String {
        return String(format: NSLocalizedString(key.name, comment: ""), args)
    }
}
