//
//  RegisterView.swift
//  InstagramCloneSwiftUI
//
//  Created by MacBook Pro on 15.02.2026.
//

import SwiftUI

struct RegisterView: View {
    @StateObject private var viewModel = RegisterViewViewModel()
    @State private var isHidden = true
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                
                Image("instagram")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200,height: 150)
                
                if !viewModel.errorMessage.trimmingCharacters(in: .whitespaces).isEmpty {
                    Text(viewModel.errorMessage)
                        .font(.footnote)
                        .foregroundColor(.red)
                        .padding(8)
                        .frame(maxWidth: .infinity)
                        .background(Color.red.opacity(0.08))
                        .cornerRadius(8)
                        .padding(.horizontal, 24)
                        .padding(.top, 8)
                }
                
                TextFieldView(placeholder: "Enter your email", text: $viewModel.email)
                
                TextFieldView(placeholder: "Enter your username", text: $viewModel.username)
                
                ZStack(alignment: .trailing) {
                    SecureField("Enter your password", text: $viewModel.password)
                        .opacity(isHidden ? 1 : 0)
                    TextField("Enter your password", text: $viewModel.password)
                        .opacity(isHidden ? 0 : 1)
                    Button {
                        isHidden.toggle()
                    } label: {
                        Image(systemName: isHidden ? "eye.slash" : "eye")
                            .foregroundStyle(.gray)
                    }
                }
                .font(.subheadline)
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(10)
                .padding(.horizontal, 24)
                
                BigButtonView(text: "Register") {
                    viewModel.register()
                }
                .navigationDestination(isPresented: $viewModel.checkRegister) {
                    MainView()
                        .navigationBarBackButtonHidden(true)
                }
                
                Spacer()
                
                Divider()
                
                HStack {
                    Text("Have an account?")
                    NavigationLink("Sign In") {
                        LoginView()
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .navigationBarBackButtonHidden(true)
                    }
                }
                .padding(.top)
                
            }
            .animation(.easeInOut(duration: 0.25), value: viewModel.errorMessage)
        }
    }
}

#Preview {
    RegisterView()
}
