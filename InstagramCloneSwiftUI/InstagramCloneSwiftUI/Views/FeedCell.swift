//
//  FeedView.swift
//  InstagramCloneSwiftUI
//
//  Created by MacBook Pro on 15.02.2026.
//

import SwiftUI

struct FeedCell: View {
    var body: some View {
        VStack {
            HStack {
                Image("ahmetaksoy")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40,height: 40)
                    .clipShape(Circle())
                
                Text("ahmetaksoy_10")
                    .font(.footnote)
                    .fontWeight(.semibold)
                Spacer()
            }
            .padding(.leading, 8)
            
            Image("ahmetaksoy")
                .resizable()
                .scaledToFill()
                .frame(height: 400)
                .clipShape(Rectangle())
            
            HStack {
                FeedButtonView(systemName: "heart") {
                    //
                }
                Text("24")
                    .padding(.trailing, 8)
                FeedButtonView(systemName: "bubble.right") {
                    //
                }
                Text("5")
                    .padding(.trailing, 8)
                
                FeedButtonView(systemName: "paperplane") {
                    //
                }
                Text("8")
                    .padding(.trailing, 8)
                Spacer()
            }
            .padding(.leading, 8)
            .padding(.top, 4)
            .foregroundStyle(.black)
        }
        
        HStack {
            Text("ahmetaksoy_10")
                .fontWeight(.semibold)
            
            Text("Merhaba, ben Swift öğreniyorum.")
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .font(.footnote)
        .padding(.leading)
        .padding(.top,1)
        
        Text("10h ago")
            .font(.footnote)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading)
            .padding(.top, 1)
            .foregroundStyle(.gray)
    }
}

#Preview {
    FeedCell()
}
