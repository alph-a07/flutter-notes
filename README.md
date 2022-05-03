# Basics of Dart
- <a href="https://github.com/alph-a07/Flutter-Notes/blob/main/README.md#introduction-to-dart">Introduction to Dart</a>
- <a href="https://github.com/alph-a07/Flutter-Notes/blob/main/README.md#dart-functions">Dart functions</a>
- <a href="https://github.com/alph-a07/Flutter-Notes/blob/main/README.md#oops-in-dart">OOPs in Dart</a>

# Flutter, let's go🚀
- [App Icon](https://github.com/alph-a07/Flutter-Notes/blob/main/README.md#app-icon)
- [State of the app](https://github.com/alph-a07/Flutter-Notes/blob/main/README.md#state-of-an-app)
- [Hot Relaod](https://github.com/alph-a07/Flutter-Notes/blob/main/README.md#hot-relaod)
- [Material Library](https://github.com/alph-a07/Flutter-Notes/blob/main/README.md#material-library)
	- [Scaffold Class](https://github.com/alph-a07/Flutter-Notes/blob/main/README.md#scaffold-class)
	- [Image Class](https://github.com/alph-a07/Flutter-Notes/blob/main/README.md#image-class)
	- [Card Class](https://api.flutter.dev/flutter/material/Card-class.html) - Rounded elevated look
	- [ListTile Class](https://api.flutter.dev/flutter/material/ListTile-class.html) - An icon with a text
	- [CircleAvatar Class](https://api.flutter.dev/flutter/material/CircleAvatar-class.html)
	- [Divider Class](https://api.flutter.dev/flutter/material/Divider-class.html)
	
- [Widgets](https://docs.flutter.dev/development/ui/widgets)
	- [Container](https://api.flutter.dev/flutter/widgets/Container-class.html)
	- [Column](https://api.flutter.dev/flutter/widgets/Column-class.html)
	- [Row](https://api.flutter.dev/flutter/widgets/Row-class.html)
	- [SizedBox](https://api.flutter.dev/flutter/widgets/SizedBox-class.html)
	- [Icon](https://api.flutter.dev/flutter/widgets/Icon-class.html) - [Searchable icons list](https://www.materialpalette.com/icons)
		
	- [Padding](https://api.flutter.dev/flutter/widgets/Padding-class.html): To apply padding to a widget whose parent does not have a `padding property`
- [Adding custom fonts](https://github.com/alph-a07/Flutter-Notes/blob/main/README.md#adding-custom-fonts)

- [Business Card UI](https://github.com/alph-a07/Flutter-Notes/blob/main/README.md#business-card-ui)

# Introduction to Dart

- Object-oriented language
- Statically typed
- C-Style Syntax
- Multiple Runtime Environments(Transpiled to Javascript to run in the browser, Runs in the 'Dart VM' to execute from a commandline, Compiled to machine code to run on mobile devices)
- _**Semicolons**_ are compulsary

# Dart Functions

### Function definition
```dart
return_type function_name ( parameters ) {
   // Body of function
   return value;
}
```

### Function call
```dart
function_name (argument_list);
```

- Two functions _**can’t have the same function name**_ although they differ in parameters.

### Optional Parameters
| Parameter        | Description| 
| ------------- |:-------------------:| 
| Optional Positional Parameter      | To specify it use square (‘[ ]’) brackets.| 
| Optional Named parameter      | When we pass this parameter it is mandatory to pass it while passing values. It is specify by curly (‘{ }’) brackets.|
| Optional parameter with default values | Here parameters are assign with default values.      |

```dart
void gfg1(int g1, [ int g2 ])
{
	// Creating function 1
	print("g1 is $g1");
	print("g2 is $g2");
}

void gfg2(int g1, { int g2, int g3 })
{
	// Creating function 2
	print("g1 is $g1");
	print("g2 is $g2");
	print("g3 is $g3");
}

void gfg3(int g1, { int g2 : 12 })
{
	// Creating function 3
	print("g1 is $g1");
	print("g2 is $g2");
}

void main()
{
	// Calling the function with optional parameter
	print("Calling the function with optional parameter:");
	gfg1(01);

	// Calling the function with Optional Named parameter
	print("Calling the function with Optional Named parameter:");
	gfg2(01, g3 : 12);

	// Calling function with default valued parameter
	print("Calling function with default valued parameter");
	gfg3(01);
}
```
`Output:`<br>
<p>
Calling the function with optional parameter:<br>
g1 is 1<br>
g2 is null<br>
Calling the function with Optional Named parameter:<br>
g1 is 1<br>
g2 is null<br>
g3 is 12<br>
Calling function with default valued parameter<br>
g1 is 1<br>
g2 is 12<br>
</p>

### Lambda

- They are also called arrow function. 
- With lambda function you can _**return value for only one expression**_.

```dart
void gfg() = > print("Welcome to GeeksforGeeks");

void main()
{
	gfg(); // Calling Lambda function
}
```

# OOPs in Dart

### Instance methods

- Unless the method is declared as static it is classified as an instance method in a class.
- To call the method of this class you have to first create an object.

```dart
// Declaring instance method
return_type method_name() {

  // Body of method
}

// Creating object
class_name object_name = new class_name();

// Calling instance method
object_name.method_name();
```

### Class methods

- All the methods declared with static keyword are termed as class method. 
- They can’t access non-static variables and can’t invoke non-static methods of the class. 
- It must be noted that unlike instance method class method can directly be called by using class name.

```dart
// Creating class method
static return_type method_name() {

   // Body of method
}

// Calling class method
class_name.method_name();
```

### Abstract class

- A class containing an abstract method must be declared abstract whereas the class declared abstract may or may not have abstract methods i.e. it can have either abstract or concrete methods.
- A class can be declared abstract by using abstract keyword only.
- A class declared as abstract can’t be initialised.
- An abstract class can be extended, but if you inherit an abstract class then you have to make sure that all the abstract methods in it are provided with implementation.

```dart
// Understanding Abstract class in Dart

// Creating Abstract Class
abstract class Gfg {
	// Creating Abstract Methods
	void say();
	void write();
}

class Geeksforgeeks extends Gfg{
	@override
	void say()
	{
		print("Yo Geek!!");
	}

	@override
	void write()
	{
		print("Geeks For Geeks");
	}
}

main()
{
	Geeksforgeeks geek = new Geeksforgeeks();
	geek.say();
	geek.write();
}
```

### Super Keyword
- Used to call imediate parent class.

### This keyword
- Used to reference the current class itself.

### Inheritance

- Parent Class: It is the class whose properties are inherited by the child class. It is also known as a _**base class**_ or _**superclass**_.
- Child Class: It is the class that inherits the properties of the other classes. It is also known as a _**deprived class**_ or _**subclass**_.

#### Single Inheritance
```dart
// Dart program to show the single inheritance

// Creating parent class
class Gfg{
	
// Creating a function
void output(){
	print("Welcome to gfg!!\nYou are inside output function.");
}
}

// Creating Child class
class GfgChild extends Gfg{
// We are not defining
// any thing inside it...
}
void main() {
// Creating object of GfgChild class
var geek = new GfgChild();
	
// Calling function
// inside Gfg(Parent class)
geek.output();
}
```

#### Multi-level Inheritance

```dart
// Dart program for multilevel interitance

// Creating parent class
class Gfg{
	
// Creating a function
void output1(){
	print("Welcome to gfg!!\nYou are inside the output function of Gfg class.");
}
}

// Creating Child1 class
class GfgChild1 extends Gfg{
	
// Creating a function
void output2(){
	print("Welcome to gfg!!\nYou are inside the output function of GfgChild1 class.");
}
}

// Creating Child2 class
class GfgChild2 extends GfgChild1{
// We are not defining
// any thing inside it...
}

void main() {
// Creating object
// of GfgChild class
var geek = new GfgChild2();
	
// Calling function
// inside Gfg
//(Parent class of Parent class)
geek.output1();
	
// Calling function
// inside GfgChild
// (Parent class)
geek.output2();
}
```

#### Hierarchical Inheritance

```dart
// Dart program for Hierarchical inheritance

// Creating parent class
class Gfg{
	
// Creating a function
void output1(){
	print("Welcome to gfg!!\nYou are inside output function of Gfg class.");
}
}

// Creating Child1 class
class GfgChild1 extends Gfg{
// We are not defining
// any thing inside it...
}

// Creating Child2 class
class GfgChild2 extends Gfg{
	
// We are not defining
// any thing inside it...
}

void main() {
// Creating object
// of GfgChild1 class
var geek1 = new GfgChild1();
	
// Calling function
// inside Gfg(Parent class)
geek1.output1();
	
// Creating object of
// GfgChild1 class
var geek2 = new GfgChild2();
	
// Calling function
// inside Gfg(Parent class)
geek2.output1();
}
```
**NOTE:**<br>
- Child classes inherit all properties and methods except constructors of the parent class.
- Like Java, Dart also doesn’t support multiple inheritance.

# App Icon
- Icon generator: https://appicon.co/ <br><br>
![image](https://user-images.githubusercontent.com/83648189/166150280-fc24aead-6f79-4908-b304-4995f3528813.png)

### IOS Icons
- Replace `ios/Runner/Assets.xcassets` with the same one got from the icon generator.

### Android Icons
- Replace mipmap files in `app/src/main/res` with the same ones got from the icon generator.

# State of an App

- The State is the information(buttons, text fonts, icons, animations, etc) that can be read synchronously when the widget is built and might change during the lifetime of the widget.

### Stateless widgets
- The widgets whose state can not be altered once they are built are called stateless widgets.
- Ex: Text, RaisedButton, IconButtons.

```dart
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
@override
	Widget build(BuildContext context) {
		return Container();
	}
}
```
### Stateful widgets
- The widgets whose state can be altered once they are built are called stateful Widgets.
- Ex: CheckBox, RadioButton, Form, TextField.

```dart
import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}
 
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
```

**Summary:** Stateless widget is useful when the part of the user interface you are describing does not depend on anything other than the configuration information and the BuildContext whereas a Stateful widget is useful when the part of the user interface you are describing can change dynamically.

# Hot Relaod

- Hot relaod does not work with a direct app in the main class.
```dart
void main() {
	runApp(
		MaterialApp(
			home: Scaffold(
				backgroundColor: Colors.red,
				body: Container(),
			), // Scaffold
		). // MaterialApp
	);
}
```
- Hot relaod works by detecting the changes made to our code and by only building those changes again, that's why it takes much less time than full build.
- In order to detect changes and build them out app must extend either a [`stateless`](https://github.com/alph-a07/Flutter-Notes/blob/main/README.md#stateless-widgets) or a [`stateful`](https://github.com/alph-a07/Flutter-Notes/blob/main/README.md#stateful-widgets) widget.

```dart
void main() {
	runApp(MyApp());
}
class MyApp extends StatelessWidget {
	@override
	Widget build(Build Context context) {
		return MaterialApp(
			home: Scaffold(
				backgroundColor: Colors.red,
				body: Container(),
			)1 // scaffOld
		); // MaterialApp
	}
}
```

**Note:** `Hot reload` affects only changed part of the app and reflects it to the running app, while `Hot restart` resets the running app's state along with changes made.

# Material Library

- Reference: https://api.flutter.dev/flutter/material/material-library.html
- Material is a design system created by Google to help teams build high-quality digital experiences for Android, iOS, Flutter, and the web.

## Scaffold Class

- Reference: https://api.flutter.dev/flutter/material/Scaffold-class.html
-  By default the scaffold's body is resized to make room for the keyboard. To prevent the resize set [`resizeToAvoidBottomInset`](https://api.flutter.dev/flutter/material/Scaffold/resizeToAvoidBottomInset.html) to false.

## Image Class

- Reference: https://api.flutter.dev/flutter/widgets/Image-class.html

#### Adding a local image

- Create a directory named images in project folder.
- Head to the `pubspec.yaml` configuration file.
```yaml
  # To add assets to your application, add an assets section, like this:
  assets:
    - images/
```
YAML(YAML Ain't Markup Language) is indentation(two spaces) based language.
- Add images path to use them in the project or just write `- images/` to add all images.

# Adding custom fonts

- Download .ttf files from https://fonts.google.com/
- Add the fonts you want to use in a new directory named `fonts`
- Now in the `pubspec.yaml` file, uncomment the code for adding fonts
```yaml
  fonts:
  - family: FONT_FAMILY
    fonts:
      - asset: fonts/FONT_REGULAR.ttf
      - asset: fonts/FONT_LIGHT.ttf
      # add as per your need
```
- Now the fonts can be accessed by the font-family `FONT_FAMILY` to style the text.

# Business Card UI

Dart Code:
```dart
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black12,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 60,
                foregroundImage: AssetImage('images/profile-pic.png'),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Jeel Patel',
                style: TextStyle(
                    fontSize: 35,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'NameFont'),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'App Developer',
                style: TextStyle(
                    fontFamily: 'WorkFont',
                    color: Colors.white,
                    fontSize: 15,
                    letterSpacing: 2.5),
              ),
              SizedBox(
                height: 20,
                width: 150,
                child: Divider(
                  color: Colors.white70,
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Icon(
                        Icons.phone,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        '+91 1234567890',
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      )
                    ],
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(horizontal: 30),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Icon(
                        Icons.email,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'itsjeel01@gmail.com',
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
```
pubspec.yaml:
```yaml
name: bussiness_card
description: A new Flutter project.

publish_to: 'none'

version: 1.0.0+1

environment:
  sdk: ">=2.16.2 <3.0.0"

dependencies:
  flutter:
    sdk: flutter

  cupertino_icons: ^1.0.2

dev_dependencies:
  flutter_test:
    sdk: flutter

  flutter_lints: ^1.0.0

flutter:

  uses-material-design: true

  assets:
    - images/

  fonts:
  - family: NameFont
    fonts:
      - asset: fonts/MySoul-Regular.ttf

  - family: WorkFont
    fonts:
      - asset: fonts/AlegreyaSansSC-Light.ttf
```
<span>
<img src="https://user-images.githubusercontent.com/83648189/166435333-5834ae75-d94a-4ef4-8f03-b2024e7aa0c3.jpg" width="270" height="600">
<img src="https://user-images.githubusercontent.com/83648189/166436617-9b960f3c-7a1b-411d-968e-f1832a8939f8.png" width="600" height="600">
</span>
