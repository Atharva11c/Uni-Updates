//
//  RegistrationView.swift
//  Uni-Updates
//
//  Created by Atharva Lavhate on 24/01/25.
//

import SwiftUI

struct RegistrationView: View {
    @State var email: String = ""
    @State var username: String = ""
    @State var fullname: String = ""
    @State var password: String = ""
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var viewModel: AuthViewModel
    var body: some View {
        VStack(spacing:20){
            //welcome
            VStack(alignment: .leading){
                HStack{ Spacer() }
                Text("Get Started!")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                Text("Create Your Account")
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
                
                CustomInputField(imageName: "person", placeholderText: "Username", text: $username)
                
                CustomInputField(imageName: "person", placeholderText: "Full Name", text: $fullname)
                CustomInputField(imageName: "lock", placeholderText: "Password", isSecureField: true,
                                 text: $password)
                
            }
            .padding(.horizontal,32)
            .padding(.top,44)
            
            //sign up
            Button{
                viewModel.register(withEmail: email, password: password, fullname: fullname, username: username)
            }label:{
                Text("Sign Up")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(width: 280, height: 50)
                    .background(Color(.blue))
                    .clipShape(.capsule)
            }
            
            Spacer()
            
            NavigationLink{
                LoginView()
                    .navigationBarHidden(true)
            }label:{
                HStack{
                    Text("Already have an accoount?")
                        .font(.caption)
                        .fontWeight(.semibold)
                        .foregroundColor(.blue)
                    Text("Sign In")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.blue)
                }
                .padding(.bottom,42)
            }
        }
    }
}

#Preview {
    RegistrationView()
}
