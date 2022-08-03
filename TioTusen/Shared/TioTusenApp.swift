//
//  TioTusenApp.swift
//  Shared
//
//  Created by Mikhail Belogorodtsev on 03.08.2022.
//

import SwiftUI

@main
struct TioTusenApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
