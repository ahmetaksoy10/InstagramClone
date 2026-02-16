//
//  ProfileView.swift
//  InstagramCloneSwiftUI
//
//  Created by MacBook Pro on 15.02.2026.
//

import SwiftUI

struct ProfileView: View {
    private let gridItems: [GridItem] = [
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1)
    ]
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    VStack(spacing: 10) {
                        HStack {
                            Image("ahmetaksoy")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 80, height: 80)
                                .clipShape(Circle())
                            
                            Spacer()
                            
                            HStack(spacing: 8) {
                                UserStatView(value: 10, title: "Posts")
                                UserStatView(value: 10, title: "Followers")
                                UserStatView(value: 10, title: "Following")
                            }
                            
                        }
                        .padding(.horizontal)
                        
                        VStack(alignment: .leading,spacing: 4) {
                            Text("Ahmet Aksoy")
                                .font(.footnote)
                            Text("✨ Baün | CENG ✨")
                                .font(.footnote)
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal)
                        
                        Button {
                            
                        } label: {
                            Text("Edit Profile")
                                .font(.subheadline)
                                .fontWeight(.bold)
                                .foregroundStyle(.black)
                                .frame(maxWidth: .infinity)
                        }
                        .padding()
                        .overlay {
                            RoundedRectangle(cornerRadius: 6)
                                .stroke(.gray, lineWidth: 1)
                        }
                        .padding(.horizontal, 12)
                        
                        Divider()
                    }
                    
                    LazyVGrid(columns: gridItems, spacing: 1) {
                        ForEach(0...9, id: \.self) {index in
                            Image("ahmetaksoy")
                                .resizable()
                                .scaledToFit()
                        }
                    }
                    
                }
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    NavigationLink {
                        SettingsView()
                    } label: {
                        Image(systemName: "line.3.horizontal")
                            .fontWeight(.semibold)
                    }

                }
            }
        }
    }
}

#Preview {
    ProfileView()
}
