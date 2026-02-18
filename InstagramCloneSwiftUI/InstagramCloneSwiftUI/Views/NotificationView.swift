//
//  NotificationView.swift
//  InstagramCloneSwiftUI
//
//  Created by MacBook Pro on 15.02.2026.
//

import SwiftUI

struct NotificationView: View {
    @State private var search = ""
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    ScrollView(.horizontal) {
                        HStack(spacing: 15) {
                            Image("ahmetaksoy")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 80, height: 80)
                                .clipShape(Circle())
                            
                            ForEach(0...1, id: \.self) { index in
                                Image("ahmetaksoy")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 80, height: 80)
                                    .clipShape(Circle())
                                
                            }
                        }
                        .padding(.horizontal)
                    }
                    .scrollIndicators(.hidden)
                    
                    Text("Mesajlar")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                    
                    ForEach(0...5, id: \.self) { index in
                        HStack {
                            Image("ahmetaksoy")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 70, height: 70)
                                .clipShape(Circle())
                            VStack(alignment: .leading) {
                                Text("Ahmet AKSOY")
                                
                                Text("10h ago")
                                    .foregroundStyle(.gray)
                            }
                            .font(.subheadline)
                            
                            Spacer()
                        }
                        .padding(.horizontal)
                    }
                }
            }
            .searchable(text: $search, placement: .navigationBarDrawer, prompt: "Ara")
            .navigationTitle("ahmetaksoy_10")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem {
                    Image(systemName: "square.and.pencil")
                }
            }
        }
    }
}

#Preview {
    NotificationView()
}
