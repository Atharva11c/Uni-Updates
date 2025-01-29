//
//  UserRowView.swift
//  INDI-POLITICS
//
//  Created by Atharva Lavhate on 20/01/25.
//

import SwiftUI

struct UserRowView: View {
    var body: some View {
        VStack(alignment:.leading){
            HStack(alignment:.top, spacing: 10){
                Circle()
                    .frame(width: 50, height: 50)
                VStack(alignment: .leading){
                    Text("neo")
                        .font(.headline)
                        .foregroundColor(.black)
                    
                    Text("Atharva Lavhate")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                Spacer()
            }
           
        }
        .padding(.horizontal)
        .padding(.vertical,4)
    }
}

#Preview {
    UserRowView()
}
