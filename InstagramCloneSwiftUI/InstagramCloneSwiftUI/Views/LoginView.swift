//
//  LoginView.swift
//  InstagramCloneSwiftUI
//
//  Created by MacBook Pro on 15.02.2026.
//

import SwiftUI

struct LoginView: View {
    @StateObject private var viewModel = LoginViewViewModel()
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
                
                BigButtonView(text: "Login") {
                    viewModel.login()
                }
                .navigationDestination(isPresented: $viewModel.checkLogin) {
                    MainView()
                        .navigationBarBackButtonHidden(true)
                }
                
                Button {
                    //
                } label: {
                    Text("Forget password ?")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                }
                .frame(maxWidth: .infinity, alignment: .trailing)
                .padding(.horizontal, 24)
                
                HStack {
                    Rectangle()
                        .frame(height: 0.5)
                    Text("OR")
                    Rectangle()
                        .frame(height: 0.5)
                }
                .padding()
                
                HStack {
                    Image("facebook")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40,height: 40)
                    
                    Text("Log in with Facebook")
                        .foregroundStyle(.blue)
                        .padding()
                }
                
                Spacer()
                
                Divider()
                    
                HStack {
                    Text("Don't have an account?")
                    NavigationLink("Sign Up") {
                        RegisterView()
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
    LoginView()
}
