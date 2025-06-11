# 📸 Riverpod + Clean Architecture Sample App

This is a sample Flutter app demonstrating **Clean Architecture** and **Riverpod** for managing state and dependencies.  
It allows users to **search free images** via the Unsplash API and view them in a responsive grid.

---

## 🚀 Features

- 🔍 Search images using the Unsplash API
- 🖼️ Display search results in a 2-column responsive grid
- 👆 Tap an image to see it in full screen with smooth hero animation
- ❌ Clear search results with one click
- 🔁 Infinite scroll with loading indicators

---

## 🛠 Development Environment

| Tool | Version |
|------|---------|
| Flutter SDK | 3.13.9 (recommended) |
| Dart SDK | 3.8.1 |
| Android Studio | Meerkat Feature Drop (2024.3.2 Patch 1) |
| Android Gradle Plugin | 7.4.2 |
| Gradle | 8.1.1 |
| Kotlin Plugin | K2 Mode |
| OS | Ubuntu 20.04.6 LTS |

---

## 📦 Dependencies

```yaml
dependencies:
  flutter:
    sdk: flutter
  flutter_riverpod: ^2.5.1
  dio: ^5.4.3+1
  freezed_annotation: ^2.4.1
  json_annotation: ^4.9.0
  flutter_spinkit: ^5.2.0

dev_dependencies:
  build_runner: ^2.4.9
  freezed: ^2.4.6
  json_serializable: ^6.7.1
  flutter_lints: ^5.0.0
```
---

## 📁 Project Structure
```
lib/
├── core/              # Shared providers and network configuration
├── data/              # DTOs, Mappers, API Repositories
├── domain/            # Entity, UseCase, Repository abstraction
└── presentation/      # UI: pages, widgets, viewmodels
```
---

## 🧩 Architecture

This project follows the **Clean Architecture** pattern with:

- **Domain Layer**  
  Pure business logic  
  Files: `entities/`, `usecases/`, `repositories/`

- **Data Layer**  
  External data source handling  
  Includes DTOs, API service logic, and repository implementations

- **Presentation Layer**  
  UI widgets, state management using Riverpod (`AsyncNotifier`)  
  Folders: `pages/`, `widgets/`, `viewmodels/`

- **Dependency Injection**  
  Done through `ProviderScope` and various `Provider`s (like `dioProvider`, `useCaseProvider`)

---

## ▶️ Getting Started

```bash
git clone https://github.com/your-username/riverpod_clean_architecture.git
cd riverpod_clean_architecture
flutter pub get

# Run code generation (only needed after modifying Freezed or JSON models)
flutter pub run build_runner build --delete-conflicting-outputs

flutter run
```
---

## 🔐 API Key Setup

This app uses the [Unsplash API](https://unsplash.com/documentation).  
To enable image search, you need to:

1. Go to [Unsplash Developer](https://unsplash.com/oauth/applications)
2. Create a new application
3. Copy the **Access Key**

Then, set the key in `core/dio_provider.dart` like this:

```dart
final apiKeyProvider = Provider<String>((ref) {
  return 'YOUR_ACCESS_KEY';
});
```





