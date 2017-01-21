# l10n

[![CI Status](http://img.shields.io/travis/Mark Berner/l10n.svg?style=flat)](https://travis-ci.org/Mark Berner/l10n)
[![Version](https://img.shields.io/cocoapods/v/l10n.svg?style=flat)](http://cocoapods.org/pods/l10n)
[![License](https://img.shields.io/cocoapods/l/l10n.svg?style=flat)](http://cocoapods.org/pods/l10n)
[![Platform](https://img.shields.io/cocoapods/p/l10n.svg?style=flat)](http://cocoapods.org/pods/l10n)

**l10n** convinient way produce localized strings
```swift

"Hello, World !!!".l10n()
"Hello, World !!!".l10n(l.vc1)
"Hello, %@ !!!".l10n(args:"Me")
"Hello, %@ !!!".l10n(l.vc1, args:"Me")

extension l10nResources {
    public static let vc1 = "ViewController"
}
typealias l = l10NResources

```
## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

l10n is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "l10n"
```

## Author

Mark Berner, mark2b@gmail.com

## License

l10n is available under the MIT license. See the LICENSE file for more info.
