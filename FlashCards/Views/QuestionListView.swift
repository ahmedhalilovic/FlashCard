//
//  QuestionListView.swift
//  FlashCards
//
//  Created by Ahmed Halilovic on 15. 9. 2024..
//

import SwiftUI

struct QuestionListView: View {
    @Environment(\.managedObjectContext) private var viewContext

    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \Item.question, ascending: true)],
        animation: .default)
    private var items: FetchedResults<Item>
    
    // Set to false so it is not visible at first
    @State var showAddQuestionView = false

    var body: some View {
        NavigationView {
            List {
                ForEach(items) { item in
                    Text(item.question!)
                }
                .onDelete(perform: deleteItems)
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    HStack {
                        
                        Button(action: {showAddQuestionView = true}) {
                            Label("Add Item", systemImage: "plus")
                        }
                        
                        EditButton()
                    }
                }
            }
            .navigationTitle("Questions")
            .navigationViewStyle(StackNavigationViewStyle()) // It will display nicer on iPad
        }
        .sheet(isPresented: $showAddQuestionView) {
            AddQeustionView()
        }
    }
    
    private func deleteItems(offsets: IndexSet) {
        withAnimation {
            offsets.map { items[$0] }.forEach(viewContext.delete)

            do {
                try viewContext.save()
            } catch {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                let nsError = error as NSError
                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
            }
        }
    }
}

struct QuestionListView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionListView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
