# Flutter Watchlist App

> Watchlist app built with Clean Architecture & BLoC pattern

## Quick Start

```bash
git https://github.com/uknaseef/watch_list_app_bloc.git
cd flutter-watchlist
flutter pub get
flutter run
```

## Architecture

```
lib/
├── core/           # Theme, constants, DI
├── features/
    └── watchlist/
        ├── data/      # Models, datasources, repositories
        ├── domain/    # Entities, usecases
        └── presentation/  # BLoC, pages, widgets
```

**Tech Stack:** Flutter 3.0+ • BLoC • Clean Architecture • Get_it • Dartz

## Project Structure

```
lib/
├── main.dart
├── core/
│   ├── constants/          # Colors, text styles, dimensions
│   ├── theme/             # App theme configuration  
│   └── di/                # Dependency injection
└── features/watchlist/
    ├── data/
    │   ├── datasources/   # Mock data
    │   ├── models/        # Data models
    │   └── repositories/  # Repository implementation
    ├── domain/
    │   ├── entities/      # Business entities
    │   ├── repositories/  # Repository contracts
    │   └── usecases/      # Business logic
    └── presentation/
        ├── bloc/          # State management
        ├── pages/         # UI screens
        └── widgets/       # UI components
```

## Build Commands

```bash
# Development
flutter run

# Release APK
flutter build apk --release

# Release iOS
flutter build ios --release
```

## Architecture Benefits

✅ **Testable** - Clear separation of concerns  
✅ **Maintainable** - Easy to modify and extend  
✅ **Scalable** - Add features without breaking existing code  
✅ **Readable** - Well-organized code structure  

## License

MIT License - feel free to use in your projects

---

*Clean Architecture • BLoC Pattern • Material Design 3*