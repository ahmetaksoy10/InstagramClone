//
//  TextFieldView.swift
//  InstagramCloneSwiftUI
//
//  Created by MacBook Pro on 15.02.2026.
//

import SwiftUI

struct TextFieldView: View {
    let placeholder: String
    @Binding var text: String
    
    var body: some View {
        
        TextField(placeholder, text: $text)
            .autocorrectionDisabled()
            .textInputAutocapitalization(.never)
            .font(.subheadline)
            .fontWeight(.semibold)
            .padding()
            .background(Color(.systemGray6))
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .padding(.horizontal, 24)
    }
}

