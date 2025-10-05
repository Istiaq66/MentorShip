# OOP 

## Abstraction.
Using simple things to represent complexity. We all know how to turn the TV on, but we don’t need to know how it works in order to enjoy it. In Java, abstraction means simple things like objects, classes and variables represent more complex underlying code and data. This is important because it lets you avoid repeating the same work multiple times.

## Encapsulation.
The practice of keeping fields within a class private, then providing access to those fields via public methods. Encapsulation is a protective barrier that keeps the data and code safe within the class itself. We can then reuse objects like code components or variables without allowing open access to the data system-wide.

## Inheritance.
A special feature of Object-Oriented Programming in Java, Inheritance lets programmers create new classes that share some of the attributes of existing classes. Using Inheritance lets us build on previous work without reinventing the wheel.

## Polymorphism.
Allows programmers to use the same word in Java to mean different things in different contexts. One form of polymorphism is method overloading. That’s when the code itself implies different meanings. The other form is method overriding. That’s when the values of the supplied variables imply different meanings. Let’s delve a little further.

## Dart: `implements` and Interfaces

### 1. Dart and Interfaces
- Dart does **not have a special `interface` keyword**.  
- Every class in Dart **automatically defines an interface** (its public methods and properties).  

### 2. `implements` Keyword
- Used when a class wants to **follow the interface of another class or abstract class**.  
- The class **must re-implement all methods and getters/setters**.  
- **Does NOT inherit** any actual code from the implemented class.  

### 3. `extends` vs `implements`

| Keyword      | Inherits Code? | Must Re-implement? | Use Case                        |
|-------------|----------------|------------------|--------------------------------|
| `extends`   | ✅ Yes          | ❌ No             | Reuse + customize behavior     |
| `implements`| ❌ No           | ✅ Yes            | Enforce a common API / contract|

## 4. Example

```dart
abstract class AuthService {
  Future<void> login(String username, String password);
  Future<void> logout();
}

class FirebaseAuthService implements AuthService {
  @override
  Future<void> login(String username, String password) async { /* ... */ }

  @override
  Future<void> logout() async { /* ... */ }
}
```
