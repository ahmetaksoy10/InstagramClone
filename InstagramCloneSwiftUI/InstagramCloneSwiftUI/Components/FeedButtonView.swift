//
//  FeedButtonView.swift
//  InstagramCloneSwiftUI
//
//  Created by MacBook Pro on 15.02.2026.
//

import SwiftUI

struct FeedButtonView: View {
    let systemName: String
    let action : () -> Void
    var body: some View {
        Button {
            action()
        } label: {
            Image(systemName: systemName)
                .imageScale(.large)
        }
    }
}

#Preview {
    FeedButtonView(systemName: "heart") {
        print("")
    }
}
