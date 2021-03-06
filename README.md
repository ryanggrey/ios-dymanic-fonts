# Dynamic Fonts App
A project to demo how to support dynamic fonts in an iOS application

# Pre-requisites
- iOS 12
- Xcode 10

# Built-in Fonts
Supported directly through Storyboards with no code required
- Use a system font
- Use Attributes Inspector to check Automatically Adjusts Font box
    - This gives us live size adjustments without an app restart being needed
- Use Attributes Inspector to set Font to be a Text Style (such as body)

Example: See "Built-in Font" label in `Main.storyboard`.

# Custom Fonts
Code and Storyboard changes required:
- Use Attributes Inspector to check Automatically Adjusts Font box
    - This gives us live size adjustments without an app restart being needed
- Create an `IBOutlet` for our text element
- Programmatically create custom `UIFont` with size for large font category
    - `UIFontMetrics` will auto-scale down for other categories
- Use `UIFontMetrics` to return a scaled version of the font

Example: See use of `genericResizableFont` in `ViewController`.

# Bold Fonts
Users can choose bold fonts through accessibility settings. To support this we must detect that this feature is on and respond programmatically. 

Example: See use of `UIAccessibility.isBoldTextEnabled` in `ViewController`.
