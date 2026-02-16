//
//  SettingsView.swift
//  InstagramCloneSwiftUI
//
//  Created by MacBook Pro on 15.02.2026.
//

import SwiftUI

struct SettingsView: View {
    @StateObject private var viewModel = LogoutViewViewModel()
    var body: some View {
        NavigationStack {
            Spacer()
            
            Button {
                viewModel.logout()
            } label: {
                Text("Log Out")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
            }
            .background(Color.red)
            .clipShape(RoundedRectangle(cornerRadius: 8))
            .padding(.horizontal, 24)
            .padding(.bottom)
        }
        .navigationDestination(isPresented: $viewModel.checkLogout) {
            LoginView()
                .navigationBarBackButtonHidden(true)
        }
        

    }
}

#Preview {
    SettingsView()
}
