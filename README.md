# FlashCard App

This is a simple FlashCard app built using **SwiftUI** and **Core Data**. It allows users to add, view, and quiz themselves on flashcards. The app features a card-flipping animation and supports persistent data storage for flashcards using Core Data.

## Features

- **Add Flashcards:** Users can add new flashcards with questions and answers.
- **View Flashcards:** All saved flashcards can be viewed in a list.
- **Quiz Mode:** Users can flip between the question and answer of each flashcard in quiz mode.
- **Persistent Storage:** Flashcards are stored using Core Data, allowing data to persist between app launches.
- **Tab Navigation:** The app uses a tab bar to switch between the list of flashcards and the quiz view.

## Screenshots

- **Main Tab View:** Switch between the "Question List" and "Quiz View".
<img src="Screenshots/Home page.png" alt="Home view" width="200"/>
- **Add Flashcards:** Add new flashcards with a question and answer.
<img src="Screenshots/Add new question.png" alt="Home view" width="200"/>
- **Flip Card Quiz:** Flip between the question and answer in quiz mode.
<img src="Screenshots/Question card view.png" alt="Home view" width="200"/>

## Requirements

- iOS 14.0+
- Xcode 12.0+
- Swift 5.3+

## Installation

1. Clone the repository:
    ```bash
    git clone https://github.com/ahmedhalilovic/FlashCardApp.git
    ```

2. Open the project in Xcode:
    ```bash
    cd FlashCardApp
    open FlashCardApp.xcodeproj
    ```

3. Build and run the project on a simulator or device.

## Core Data

The app uses **Core Data** to store flashcards. Each flashcard is an instance of the `Item` entity with the following attributes:

- `question` (String): The question of the flashcard.
- `answer` (String): The answer to the question.

## Project Structure

- **ContentView.swift**: The main entry point of the app. It contains a tab view that switches between `QuestionListView` and `QuizView`.
- **QuestionListView.swift**: Displays a list of flashcards. Allows adding new flashcards and deleting existing ones.
- **QuizView.swift**: Displays the flashcards in a quiz format, allowing the user to flip between the question and answer.
- **CardFront.swift**: The front side of the flashcard showing the question.
- **CardBack.swift**: The back side of the flashcard showing the answer.
- **AddQuestionView.swift**: The form to add a new flashcard with a question and answer.
  
## Usage

1. **Adding Flashcards**: Tap the "Add" button in the Question List tab to add a new flashcard. Fill in the question and answer, then press "Save".
   
2. **Quiz Mode**: Navigate to the Quiz View tab. Tap the card to flip between the question and answer. Use the "Previous" and "Next" buttons to move between flashcards.

3. **Editing Flashcards**: You can delete flashcards by tapping the "Edit" button in the Question List tab.

## Custom Fonts

The app uses a custom font `Belaga.otf`. Ensure that the font file is included in the project and properly configured in the `Info.plist`:

```xml
<key>UIAppFonts</key>
<array>
    <string>Belaga.otf</string>
</array>
```

## License

This project is licensed under the MIT License - see the LICENSE file for details.
