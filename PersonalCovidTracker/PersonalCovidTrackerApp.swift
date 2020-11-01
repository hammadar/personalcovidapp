//
//  PersonalCovidTrackerApp.swift
//  PersonalCovidTracker
//
//  Created by Hammad Rehman on 2020-10-31.
//

import SwiftUI

@main
struct PersonalCovidTrackerApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
