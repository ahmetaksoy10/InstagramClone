//
//  ContentView.swift
//  InstagramCloneSwiftUI
//
//  Created by MacBook Pro on 10.02.2026.
//

import SwiftUI

struct MainView: View {
    @StateObject private var viewModel = Users()
    var body: some View {
        
        if !viewModel.isLoggin {
            LoginView()
        } else {
            TabView {
                
                FeedView()
                    .tabItem {
                        Image(systemName: "house")
                    }
                Text("Search")
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                    }
                Text("UploadPost")
                    .tabItem {
                        Image(systemName: "plus.square")
                    }
                Text("Notifications")
                    .tabItem {
                        Image(systemName: "heart")
                    }
                ProfileView()
                    .tabItem {
                        Image(systemName: "person")
                    }
            }
            .accentColor(.black)
        }
        
    }
}

#Preview {
    MainView()
}
