# Localizability

> Swifty and modern NSLocalizedString

Localizability is a simple Swift library to localize strings easily.

Inspired by [sindresorhus/Defaults](https://github.com/sindresorhus/Defaults).

## Install

### Swift PM

Add `https://github.com/Fus1onDev/Localizability` in Swift Package Manager.

## Usage

First, add some keys and values to `Localizable.strings`.
```
"thisIsASampleText" = "This is a sample text.";

"iLikeString" = "I like %@.";
```

Next, declare the keys.

```swift
import Localizability

extension Localized.Keys {
    static let thisIsASampleText = Key("thisIsASampleText")
    static let iLikeString = Key("iLikeString")
}
```

Finally, you can access it like this:

```swift
let str = Localized[.thisIsASampleText]
print(str)

// "This is a sample text." (in your language)
```

### String Templates

If arguments are added, the localized string is used as a template.

```swift
let str = Localized[.iLikeString, "apples"]
print(str)

// "I like apples." (in your language)
```

### SwiftUI Supports

These SwiftUI components are also available.

```swift
var body: some View {
    LocalizedText(key: .thisIsASampleText)
    // or
    LocalizedText[.thisIsASampleText]
}

```

## LICENSE

MIT