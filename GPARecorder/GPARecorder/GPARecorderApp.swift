//
//  GPARecorderApp.swift
//  GPARecorder
//
//  Created by Kaifeng Lin on 2/24/23.
//
import SwiftUI
import CoreData
import Combine
@main
struct GPARecorderApp: App {
    @StateObject var courseListVM = CourseListViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView(viewed: true)
                .environmentObject(courseListVM)
        }
    }
}
