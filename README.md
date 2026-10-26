# 📸 Exo App Photo Flutter

<p align="center">
  <strong>Galerie de photos développée avec Flutter</strong>
</p>

<p align="center">
  Une application mobile qui permet de prendre des photos ou de les choisir dans la galerie, de les parcourir dans une liste d'avatars, de les afficher en grand et de les supprimer.
</p>

## 📌 Présentation

**Exo App Photo Flutter** est une application mobile réalisée avec Flutter et Dart. L'utilisateur ajoute des photos depuis l'appareil photo ou depuis la galerie grâce au package `image_picker`. Les photos s'affichent dans une liste horizontale de `CircleAvatar` en haut de la page. Un tap sur un avatar affiche la photo dans une `Card`, un appui long la supprime.

Le projet a été réalisé comme exercice du cours *Flutter & Dart - L'essentiel* (Udemy). Son objectif principal est de réutiliser le package `image_picker` d'une façon différente, en gérant plusieurs photos à la fois.

## ✨ Fonctionnalités

- **Plusieurs photos** : l'utilisateur peut en ajouter autant qu'il le souhaite
- **Prise de photo** avec l'appareil photo, via un bouton placé dans l'`AppBar`
- **Choix dans la galerie** de l'appareil, via un second bouton placé dans l'`AppBar`
- **Liste d'avatars** : les photos sont présentées dans des `CircleAvatar` déroulants horizontalement en haut de la page
- **Affichage d'une photo** : un tap sur un avatar affiche la photo sélectionnée dans une `Card`
- **Suppression d'une photo** : un appui long (long press) sur un avatar supprime la photo

## 🧠 Interactions

| Geste ou action | Résultat |
|---|---|
| Bouton appareil photo (`AppBar`) | Prend une photo et l'ajoute à la liste |
| Bouton galerie (`AppBar`) | Choisit une image dans la bibliothèque et l'ajoute à la liste |
| Tap sur un `CircleAvatar` | Affiche la photo sélectionnée dans la `Card` |
| Appui long sur un `CircleAvatar` | Supprime la photo |

## 🛠️ Technologies utilisées

| Technologie | Utilisation |
|---|---|
| [Flutter](https://flutter.dev/) | Développement multiplateforme |
| [Dart](https://dart.dev/) | Langage de programmation |
| [image_picker](https://pub.dev/packages/image_picker) | Prise de photo et sélection dans la galerie |
| Material Design | Widgets de l'interface |
| Git et GitHub | Gestion de versions et hébergement du code |

## 📷 Aperçu de l'application

<p align="center">
  <img src="screenshots/ExoAppPhotoImage1.jpeg" alt="Ecran 1" width="250">
</p>

## 🚀 Installation et exécution

### Prérequis

- Flutter SDK installé et configuré
- Dart SDK (fourni avec Flutter)
- Android Studio ou Visual Studio Code
- Un émulateur Android ou un appareil compatible

### Étapes

**1. Cloner le dépôt**

```bash
git clone https://github.com/KifK2f/exo_app_photo.git
```

**2. Accéder au projet**

```bash
cd exo_app_photo
```

**3. Installer les dépendances**

```bash
flutter pub get
```

**4. Lancer l'application**

```bash
flutter run
```

## 📁 Structure du projet

```text
exo_app_photo/
├── lib/
│   └── main.dart        # Code de l'application
├── screenshots/         # Captures d'écran du README
├── pubspec.yaml
└── README.md
```

## 🎯 Objectifs du projet

- Réutiliser le package `image_picker` pour prendre une photo et choisir une image dans la galerie
- Gérer une liste de plusieurs photos dans l'état d'une page avec un `StatefulWidget` et `setState`
- Afficher une liste horizontale d'avatars (`CircleAvatar`)
- Réagir aux gestes de l'utilisateur : tap pour afficher, appui long pour supprimer
- Afficher la photo sélectionnée dans une `Card`

## 👨‍💻 Auteur

**FIANYO Kodzovi Friedo**

- GitHub : [@KifK2f](https://github.com/KifK2f)

---

<p align="center">
  Développé avec Flutter et Dart.
</p>