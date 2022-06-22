# password_manager

A simple password management app made with Flutter/Dart.

# screenshots

homepage:

![](flutter_01.png)

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

# Few details

flutter version: 2.10.4

PS: if on a lower version, run below to upgrade

```bash
$ flutter upgrade
```

using auto_route library:

one time build to generate routes

```bash
$ flutter packages pub run build_runner build
```

continuous build

```bash
$ flutter packages pub run build_runner watch --delete-conflicting-outputs
```

and the file routes/auto_route.gr.dart is generated and you can use the route any where e.g AutoRouter.of(context).push(NameoftheWidget());
