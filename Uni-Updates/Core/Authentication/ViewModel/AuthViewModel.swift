//
//  AuthViewModel.swift
//  Uni-Updates
//
//  Created by Atharva Lavhate on 25/01/25.
//

import Foundation
import SwiftUI
import Firebase
import FirebaseAuth

class AuthViewModel: ObservableObject {
    
    @Published var userSession: FirebaseAuth.User?
    
    init() {
        self.userSession = Auth.auth().currentUser
        
        print("DEBUG: User session is \(self.userSession?.uid)")
        }
    func login(withEmail email: String, password: String){
        Auth.auth().signIn(withEmail: email, password: password) { result, error in
            if let error = error{
                print("DEBUG: Failed to login with error \(error.localizedDescription)")
                return
            }
            guard let user = result? .user else { return }
            self.userSession = user
            print("DEBUG: logged in Successfully")
        }
    }
    
    func register(withEmail email: String, password: String,fullname: String,username: String){
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            if let error = error{
                print("DEBUG: Failed to register with error \(error.localizedDescription)")
                return
            }
            guard let user = result? .user else { return }
            self.userSession = user
            
            print("DEBUG: registered Successfully")
            
            let data = ["email": email, "username": username.lowercased(), "fullname": fullname,"uid": user.uid]
            Firestore.firestore().collection("users").document(user.uid).setData(data) { _ in
                print("DEBUG: Did upoload user data")
            }
            
        }
    }
    
    func signOut(){
        //user side signout
        userSession = nil
        //sign outs user on server
        try? Auth.auth().signOut()
    }
}

