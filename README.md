# Basics of Dart
- <a href="https://github.com/alph-a07/Flutter-Notes/blob/main/README.md#introduction-to-dart">Introduction to Dart</a>
- <a href="https://github.com/alph-a07/Flutter-Notes/blob/main/README.md#dart-functions">Dart functions</a>
- <a href="https://github.com/alph-a07/Flutter-Notes/blob/main/README.md#oops-in-dart">OOPs in Dart</a>

# Flutter, let's go🚀
- [App Icon](https://github.com/alph-a07/Flutter-Notes/blob/main/README.md#app-icon)

- [Material Library](https://github.com/alph-a07/Flutter-Notes/blob/main/README.md#material-library)
	- [Scaffold Class](https://github.com/alph-a07/Flutter-Notes/blob/main/README.md#scaffold-class)
	- [Image Class](https://github.com/alph-a07/Flutter-Notes/blob/main/README.md#image-class)

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
- Icon generator: https://appicon.co/
![image](https://user-images.githubusercontent.com/83648189/166150250-b68130c6-f31c-4250-b69b-535a75b3e8e1.png)


### IOS Icons
- Replace `ios/Runner/Assets.xcassets` with the same one got from the icon generator.

### Android Icons
- Replace mipmap files in `app/src/main/res` with the same ones got from the icon generator.

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


