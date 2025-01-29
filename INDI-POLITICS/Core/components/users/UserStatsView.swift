//
//  UserStatsView.swift
//  INDI-POLITICS
//
//  Created by Atharva Lavhate on 20/01/25.
//

import SwiftUI

struct UserStatsView: View {
    var body: some View {
        HStack{
            //followers
            HStack{
                Text("289")
                    .font(.subheadline).bold()
                Text("Followers")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                
            }
            //Following
            HStack{
                Text("277")
                    .font(.subheadline).bold()
                Text("Following")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            
        }
    }
}

#Preview {
    UserStatsView()
}
