//
//  scrollo_iosApp.swift
//  Shared
//
//  Created by user on 08.04.2022.
//

import SwiftUI

@main
struct scrollo_iosApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
