A **Flutter** learning project built from scratch: a Marvel & DC superhero list app, developed step by step while learning one Flutter concept at a time.

I'm learning Flutter, and this project is built with **Claude (by Anthropic) as my teacher**.

How I learn:
- Claude provides lessons and code **stage by stage**, with explanations of every unfamiliar term (widgets, `const`, `Column`, etc.).
- I ask questions about anything I don't understand, including errors I run into.
- I **type all the code myself, one line at a time**, instead of copy-pasting, so the concepts really sink in.

> 🙏 Big thanks to **Claude** as my teacher!

## 🗺️ Learning Progress

- [x] **Stage 1:** Project setup, `main()`, `StatelessWidget`, `MaterialApp`, `Scaffold`, `AppBar`
- [x] **Stage 2:** Basic layout (`Column`, `Row`, `Container`, `Image.asset`, registering assets in `pubspec.yaml`)
- [x] **Stage 3:** Models and data (`Superhero` class, `enum`, `List`)
- [x] **Stage 4:** `ListView.builder` and a custom `HeroTile` widget
- [x] **Stage 5:** Navigation to a detail page (`Navigator.push`)
- [ ] **Stage 6:** Detail page styling
- [ ] **Stage 7:** State and a favorites feature (`ValueNotifier`)
- [ ] **Stage 8:** Polish and independent practice

## Getting Started

```bash
git clone https://github.com/jippiecee/superhero.git
cd superhero
flutter pub get
flutter run
```

Pick a device as needed, e.g. `flutter run -d chrome` or `flutter run -d linux`.

## 📁 Project Structure

```
lib/
├── main.dart          # app entry point and main screen
├── models/
│   └── superhero.dart # Superhero model class
└── data/
    └── heroes.dart    # hero data list
assets/
└── images/            # hero images
```

## 📝 Notes

This project is purely for practice, so the code will keep changing as I progress through the stages. Character images belong to their respective copyright holders (Marvel and DC) and are used for learning purposes only.
