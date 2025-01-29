//
//  AuthenticationHeaderView.swift
//  INDI-POLITICS
//
//  Created by Atharva Lavhate on 25/01/25.
//

import SwiftUI

struct AuthenticationHeaderView: View {
    var body: some View {
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

    }
}

#Preview {
    AuthenticationHeaderView()
}
