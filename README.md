# MSToolKit

<p align="center">
    <img src="https://img.shields.io/badge/Platform-iOS_12.1-green.svg" alt="Platform: iOS 12.1" />
    <a href="https://developer.apple.com/swift" target="_blank"><img src="https://img.shields.io/badge/Language-Swift_4-blueviolet.svg" alt="Language: Swift 4" /></a>
    <a href="https://cocoapods.org/pods/PanModal" target="_blank"><img src="https://img.shields.io/badge/CocoaPods-v1.0.2-red.svg" alt="CocoaPods compatible" /></a>
    <img src="https://img.shields.io/badge/License-MIT-green.svg" alt="License: MIT" />
</p>

MSToolKit simplifies the process of writing UI code through a multitude of extensions and components based off of common `UIKit` elements with the goal of speeding up UI based development in mind. Currently, the library offers an unique way to write autolayout constraints based off of the new `UIKit` anchoring system, and a variety of extensions that reduce the amount of code pollution involved with initializing common UI elements.

## Compatibility

MSToolKit requires **iOS 12.1** and is compatible with **Swift 4.2** projects.

## Installation

[CocoaPods](https://cocoapods.org) is an easy to use dependency manager . To install MSToolKit, simply add the following line to your Podfile:

```
pod 'MSToolKit'
```

## Usage

MSToolKit was designed to be used effortlessly. Simply import MSToolKit at the top of your file of choice to gain access to the extensions. MSToolKit depends on UIKit, so it is also ok to omit the UIKit import when importing MSToolKit.

```
import MSToolKit
```

### Anchors

Writing constraints using `UIKit` can get tedious and repetitive. The anchoring extension makes it easy to constraint any object that subclasses an `UIView` easy. This extension was adopted completely from [LBTATools](https://github.com/bhlvoong/LBTATools).

To constraint an object to all its edges, simply call `fillSuperview()`:

```
testView.fillSuperview()
```

It is also possible to add some optional padding when constraining to all edges of a view by specifying a `UIEdgeInsets` parameter:

```
testView.fillSuperview(padding: UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
```

To center an object in a view, simply call `centerInSuperview()`:

```
testView.centerInSuperview()
```

To custom constraint an object to some other object, use the `anchor(...)` function. For example this piece of code would constraint the redView to the blueView's leading, top, and trailing respective layout anchors and apply some padding.

```
redView.anchor(top: testView.topAnchor,
               leading: testView.leadingAnchor,
               bottom: nil,
               trailing: testView.trailingAnchor,
               padding: .init(top: 20, left: 10, bottom: 0, right: 10))
```

By specifying nil, the constraint to that particular layout anchor will be ignored. It is also possible to specify fixed size and height parameter through an additional size parameter of type `CGSize` on the `anchor(...)` function. Explore the example project for more details.

### Multiple Views

Adding subviews to a view can become a repetitive process and requires making the same `addSubview(...)` call multiple times. The `addSubviews(...)` function simplifies this by allowing multiple views to be passed in at once.

```
view.addSubviews(redView, blueView, greenView)
```

### Stack View Replacements

Sometimes the need to manipulate views inside a pre-existing stack view might arise. There is no go-to function call offered by `UIKit` that helps accomplish. Simple call `replaceArrangedSubviews(...)` on an existing stack view object where the parameters are the new set of desired views.

```
stackView.replaceArrangedSubviews(with: redView, blueView)
```

### Default Alert Controller

The process of creating an `UIAlertController` can involve quite a bit of boilerplate code. Simply use the convenience initializer provided by this library to setup various common components of the alert controller in one line:

```
let alertController = UIAlertController(title: "Hello",
                                        message: "This CocoaPod is awesome!",
                                        preferredStyle: .alert,
                                        actionTitle: "Ok",
                                        actionStyle: .default)
```

### Default Label

The process of creating an `UILabel` can involve quite a bit of boilerplate code. Simply use the convenience initializer provided by this library to setup various components of the label in one line:

```
let label = UILabel(text: "Hello, World!", 
                    textAlignment: .center, 
                    textColor: .purple, 
                    font: UIFont.systemFont(ofSize: 20))
```

### Partial String Colour

It is sometimes desirable to have strings that are partially colored for use as attributed text. Simply call the `attributedStringForPartiallyColoredText` to achieve this functionality:

```
let label = UILabel()
let str = "Hello, World!".attributedStringForPartiallyColoredText("Hello", with: .blue)
label.attributedText = str
```
