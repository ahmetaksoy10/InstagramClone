//
//  BigButtonView.swift
//  InstagramCloneSwiftUI
//
//  Created by MacBook Pro on 15.02.2026.
//

import SwiftUI

struct BigButtonView: View {
    let text : String
    let action: () -> Void
    var body: some View {
        Button {
            action()
        } label: {
            Text(text)
                .font(.subheadline)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity)
                .foregroundStyle(.black)
        }
        .padding()
        .overlay {
            RoundedRectangle(cornerRadius: 8)
                .stroke(lineWidth: 1)
        }
        .contentShape(Rectangle())
        .padding(.horizontal, 24)

    }
}

#Preview {
    BigButtonView(text: "Login") {
        print("Tapped")
    }
}
