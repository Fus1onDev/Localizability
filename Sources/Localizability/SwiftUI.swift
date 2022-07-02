import SwiftUI

@available(macOS 11, iOS 14, tvOS 14, watchOS 7, *)
public struct LocalizedText<Key>: View where Key: Localized.Key {
    private let key: Localized.Key
    
    public init(key: Localized.Key) {
        self.key = key
    }
    
    public var body: some View {
        SwiftUI.Text(Localized[key])
    }
    
    public static subscript(key: Localized.Key) -> LocalizedText {
        return LocalizedText(key: key)
    }
}
