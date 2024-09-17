//
//  ContentView.swift
//  FlashCards
//
//  Created by Ahmed Halilovic on 15. 9. 2024..
//

import SwiftUI
import CoreData

struct ContentView: View {
    var body: some View {
        TabView {
            QuestionListView()
                .tabItem {
                    Label("Question List", systemImage: "list.dash")
                }
            QuizView()
                .tabItem {
                    Label("Quiz View", systemImage: "questionmark")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
