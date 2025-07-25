# LearnSwiftUI

A comprehensive, example-driven project to help you learn SwiftUI by exploring real code. Each file demonstrates a specific SwiftUI concept, with clear comments to make learning easier.

## Project Structure

- **LearnSwiftUI/**
  - **Advance/**: Advanced SwiftUI topics (e.g., Alerts, Animations, Navigation, Pickers, Lists, etc.)
  - **Properties/**: Property wrappers and view properties (e.g., State, ForEach, Group, SystemImage, etc.)
  - **Reactive Programming/**: State management and reactive patterns (e.g., State, Binding, ObservableObject, EnvironmentObject)
  - **View Components/**: Core SwiftUI components (e.g., Button, Text, Image, Stack, Shape, Gradient, etc.)
  - **MissingTopics/**: Additional important SwiftUI topics (see below)
  - **ContentView.swift**: Entry point for the app
  - **LearnSwiftUIApp.swift**: App lifecycle
  - **Item.swift**: Supporting model(s)

## Covered Topics

### Basics
- Text, Image, Button, Stack (HStack/VStack/ZStack), Shape, Gradient
- TextField, TextEditor, ScrollView, LazyVStack

### Advanced
- List, Picker, Slider, Stepper, Toggle, DatePicker, ColorPicker
- Alert, Popup, ContextMenu, NavigationView, NavigationBar, Animation
- Group, Frame & Alignment, IgnoreSafeArea

### State Management
- @State, @Binding, @ObservableObject, @StateObject, @EnvironmentObject
- Subscription/Binding patterns

### Property Wrappers
- ConditionalView, ForEachView, InitializerView, SystemImageView

### **Good To Know** (New)
- **FormView.swift**: How to use `Form` for data entry
- **TabViewDemo.swift**: Tab-based navigation with `TabView`
- **SheetDemoView.swift**: Presenting modal sheets
- **CustomViewModifierDemo.swift**: Creating and using custom `ViewModifier`s
- **GeometryReaderDemo.swift**: Layout with `GeometryReader`
- **LazyVGridDemo.swift**: Grid layouts with `LazyVGrid`

## How to Use

1. Open the project in Xcode.
2. Browse the folders and open any Swift file to see a focused example of a SwiftUI concept.
3. Each file is self-contained and includes comments explaining the code and concept.
4. You can run the app and swap out the root view in `ContentView.swift` to try different examples.

## Contributing

Feel free to add more examples or improve comments for better learning! If you find a missing topic, create a new file in the appropriate folder and add a clear, commented example.

---

**Happy Learning SwiftUI!** 
