# Dynamic Fonts App
A project to demo how to support dynamic fonts in an iOS application

# Built-in Fonts
Supported directly through Storyboards with no code required
- Use a system font
- Use Attributes Inspector to check Automatically Adjusts Font box
- Use Attributes Inspector to set Font to be a Text Style (such as body)

Example: See "Built-in Font" label in `Main.storyboard`.

# Custom Fonts
Code level required meaning we must
- Create an `IBOutlet` for our text element
- Programmatically create custom `UIFont` with size for large font category
    - `UIFontMetrics` will auto-scale down for other categories
- Use `UIFontMetrics` to return a scaled version of the font

Example: See use of `genericResizableFont` in `ViewController`.

# Bold Fonts
Users can choose bold fonts through accessibility settings. To support this we must detect that this feature is on and respond programmatically. 

Example: See use of `UIAccessibility.isBoldTextEnabled` in `ViewController`.
