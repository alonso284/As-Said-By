//
//  ContentView.swift
//  As Said By
//
//  Created by Alonso Huerta on 23/02/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var quotes: [Quote]

    var body: some View {
        NavigationSplitView {
            List {
                ForEach(quotes) { quote in
                    NavigationLink {
                        Text("Quote: \(quote.text)")
                    } label: {
                        Image(systemName: "arrow.right")
                    }
                }
                .onDelete(perform: deleteItems)
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    EditButton()
                }
                ToolbarItem {
                    Button(action: addItem) {
                        Label("Add Item", systemImage: "plus")
                    }
                }
            }
        } detail: {
            Text("Select an item")
        }
    }

    private func addItem() {
        withAnimation {
            let newItem = Quote(text: "my new born baby")
            modelContext.insert(newItem)
        }
    }

    private func deleteItems(offsets: IndexSet) {
        withAnimation {
            for index in offsets {
                modelContext.delete(quotes[index])
            }
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Quote.self, inMemory: true)
}
