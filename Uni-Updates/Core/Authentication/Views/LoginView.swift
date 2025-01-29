//
//  LoginView.swift
//  Uni-Updates
//  Created by Atharva Lavhate on 24/01/25.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    @EnvironmentObject var viewModel: AuthViewModel
    var body: some View {
        //parent stack
        VStack{
            //welcome
            VStack(alignment: .leading){
                HStack{ Spacer() }
                Text("Hello.")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                Text("Welcome Back to Uni-Updates!")
                    .font(.title)
                    .fontWeight(.bold)
            }
            .frame(height:200)
            .padding()
            .background(Color(.blue))
            .foregroundColor(.white)
            
            //email and pass
            VStack(spacing:40){
                
                CustomInputField(imageName: "envelope", placeholderText: "Email", text: $email)
                
                CustomInputField(imageName: "lock", placeholderText: "Password",
                                 isSecureField:true ,text: $password)
            }
            .padding(.horizontal,32)
            .padding(.top,44)
            HStack{
                Spacer()
                NavigationLink{
                    Text("view")
                }label:{
                    Text("Forgot Password?")
                        .font(.caption)
                        .fontWeight(.semibold)
                        .foregroundColor(.blue)
                        .padding()
                }
            }
            //sign in button
            Button{
                viewModel.login(withEmail: email, password: password)
            }label:{
                Text("Sign In")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(width: 280, height: 50)
                    .background(Color(.blue))
                    .clipShape(.capsule)
            }
            Spacer()
            //sign up button
            NavigationLink{
                RegistrationView()
                    .navigationBarHidden(true)
            }label:{
                HStack{
                    Text("Don't have an accoount?")
                        .font(.caption)
                        .fontWeight(.semibold)
                        .foregroundColor(.blue)
                    Text("Sign Up")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.blue)
                }
                .padding(.bottom,32)
            }
        }
        .navigationBarHidden(true)
    }
}

#Preview {
    LoginView()
}
