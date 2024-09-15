//
//  FlashCardsApp.swift
//  FlashCards
//
//  Created by Ahmed Halilovic on 15. 9. 2024..
//

import SwiftUI

@main
struct FlashCardsApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
