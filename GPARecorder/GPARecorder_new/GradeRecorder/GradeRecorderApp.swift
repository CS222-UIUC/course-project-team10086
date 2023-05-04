//
//  GradeRecorderApp.swift
//  GradeRecorder
//
//  Created by Zihan Qiu on 4/23/23.
//

import SwiftUI

@main
struct GradeRecorderApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
