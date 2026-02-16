//
//  InstagramCloneSwiftUIApp.swift
//  InstagramCloneSwiftUI
//
//  Created by MacBook Pro on 10.02.2026.
//

import SwiftUI
import Firebase


@main
struct InstagramCloneSwiftUIApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
