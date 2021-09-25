# stronk

Wow, such stronk, much gainz

## App Design

![App Overview](./stronk.svg)


## Architecture

### Models using Freezed

```
part 'foo.freezed.dart';
part 'foo.g.dart';

@freezed
class Foo implements _$Foo {
    const Foo._();

    const factory Foo({
        String? id,
        required String name,
        @Default(false) bool isBar,
    }) = _Foo;

    factory Foo.empty() => Foo(name: "");

    // Automatically generates toJson and fromJson
    factory Foo.fromJson(Map<String, dynamic> json) => _$FooFromJson(json);

    factory Foo.fromDocument(DocumentSnapshot doc) {
        final data = doc.data()!;
        // copyWith is also automatically generated
        return Foo.fromJson(data).copyWith(id: doc.id);
    }

    Map<String, dynamic> toDocument() => toJson()..remove('id');
}
```

Run with `flutter packages pub run build_runner watch --delete-conflicting-outputs` so that the files are automatically updated.

### Repositories && Riverpod

Repositories provide the layer between APIs and our application and define a set of functions that allow us to interact with the REST APIs or the Stream based data.

Each repository has a abstract base class that allows us to mock the repository.

The repositories are then exposed via a `Provider`, which is able to access other (global) providers that the Repository might need.

### Controller && Riverpod

Controllers provide the state to the UI, so we use the `StateNotifier` so we can access that directly within the build methods.

The Controllers are exposed with `StateNotifierProvider`, which allows us to also call initialization code after the controller is instantiated using `XController(...)..foo()`.

We wrap our models with `AsyncValue` to set the state of the item to one of `loading`, `data` and `error`. With that we can build UI using the `when` method that allows us to pass callbacks to build our UI based on the current state. As the UI rebuilds whenever the state of the `StateNotifierProvider<AsyncValue<...>>` changes, the UI seamlessly rebuilds whenever the state of the data changes (eg from `loading` to `data`).


### ConsumerWidgets/HookWidgets && Riverpod / Hooks

We use `ConsumerWidget` to access the providers within  the build method of our custom Widgets using either `context.read(...)` for one time provider access or `watch(...)` for subscribing to the state of a provider.

`HookWidget`s allow us to access `use...` hooks within the build method that remove boilerplate code for getting access to providers, text controllers etc.


### Extensions

We can extend some builtin classes like `String`, but also  `FirebaseDatabase` from packages to create Extensions for them using 
```
extension MyExtension on String {
    bool equalToFoo => this == "foo";
}
````
With that, we can use our custom methods on any object of that type, like `"bar".equalToFoo()`.

This allows us to create accessors to attributes of the class and to avoid repetitive code.