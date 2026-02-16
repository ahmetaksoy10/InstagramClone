//
//  FeedView.swift
//  InstagramCloneSwiftUI
//
//  Created by MacBook Pro on 15.02.2026.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack {
                    ForEach(0...10, id: \.self) { post in
                        FeedCell()
                    }
                }
                .padding(.top, 8)
            }
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Image("instagram")
                        .resizable()
                        .frame(width:100 ,height: 32)
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    Image(systemName: "paperplane")
                }
            }
        }
    }
}

#Preview {
    FeedView()
}
