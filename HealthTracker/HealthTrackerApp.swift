//
//  HealthTrackerApp.swift
//  HealthTracker
//
//  Created by Matt DiNovo on 4/22/24.
//

import SwiftUI
import SwiftData

@main
struct HealthTrackerApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Meds.self)
    }
}
