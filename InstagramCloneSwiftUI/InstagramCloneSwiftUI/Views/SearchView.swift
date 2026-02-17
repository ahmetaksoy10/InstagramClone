//
//  SearchView.swift
//  InstagramCloneSwiftUI
//
//  Created by MacBook Pro on 15.02.2026.
//

import SwiftUI

struct SearchView: View {
    @State private var search = ""
    var body: some View {
        NavigationStack {
            ScrollView {
                ForEach(0...5,id: \.self) { index in
                    HStack {
                        Image("ahmetaksoy")
                            .resizable()
                            .scaledToFill()
                            .frame(width:40 ,height: 40)
                            .clipShape(Circle())
                        VStack(alignment: .leading) {
                            Text("ahmetaksoy_10")
                            Text("Ahmet AKSOY")
                                .font(.footnote)
                                
                        }
                        .fontWeight(.semibold)
                        
                        Spacer()
                    }
                    .padding(.horizontal)
                }
                
            }
        }
        .searchable(text: $search, placement: .navigationBarDrawer, prompt: "Ara")
    }
}

#Preview {
    SearchView()
}
