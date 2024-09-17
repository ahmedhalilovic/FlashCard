//
//  AddQeustionView.swift
//  FlashCards
//
//  Created by Ahmed Halilovic on 15. 9. 2024..
//

import SwiftUI

struct AddQeustionView: View {
    @Environment(\.managedObjectContext) private var viewContext

    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \Item.question, ascending: true)],
        animation: .default)
    private var items: FetchedResults<Item>
    
    @State var questionString = ""
    @State var answerString = ""
    
    @Environment(\.dismiss) var dismissView
    
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    Section("Question") {
                        HStack {
                            TextField("Type your question here",
                                      text: $questionString)
                            Text("*")
                                .foregroundColor(.red)
                        }
                    }
                    Section("Answer") {
                        HStack {
                            TextField("Type your answer here",
                            text: $answerString)
                            Text("*")
                                .foregroundColor(.red)
                        }
                    }
                    
                    HStack {
                        Button(action: {
                            dismissView()
                        }) {
                            Text("Cancel")
                        }
                        .foregroundColor(.red)
                        .frame(maxWidth: .infinity)
                        
                        if questionString != "" && answerString != "" {
                            
                            Button(action: {
                                addItem()
                                dismissView()
                            }) {
                                Text("Save")
                            }
                            .frame(maxWidth: .infinity)
                            .disabled(false)
                        } else {
                            Button(action: { } ) {
                                Text("Save")
                                    .foregroundColor(.secondary)
                                    .frame(maxWidth: .infinity)
                            }
                            .disabled(true)
                        }
                    }
                }
            }
        }
    }
    
    private func addItem() {
        withAnimation {
            let newItem = Item(context: viewContext)
            newItem.question = questionString
            newItem.answer = answerString
            
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

struct AddQeustionView_Previews: PreviewProvider {

    static var previews: some View {
        AddQeustionView()
    }
}
