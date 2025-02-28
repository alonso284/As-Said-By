//
//  As_Said_ByApp.swift
//  As Said By
//
//  Created by Alonso Huerta on 23/02/25.
//

import SwiftUI
import SwiftData

@main
struct As_Said_ByApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Author.self,
            Quote.self
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}
