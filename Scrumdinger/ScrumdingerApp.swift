//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Hossein Sharifi on 23/09/2023.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: DailyScrum.sampleData)
        }
    }
}
