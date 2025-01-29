//
//  SideMenuView.swift
//  INDI-POLITICS
//
//  Created by Atharva Lavhate on 20/01/25.
//

import SwiftUI

struct SideMenuView: View {
    @EnvironmentObject var authSideview: AuthViewModel
    var body: some View {
        VStack(alignment: .leading, spacing: 4){
            VStack(alignment: .leading, spacing: 8){
                Circle()
                    .frame(width: 50, height: 50)
                Text("Atharva Lavhate")
                    .font(.headline)
                Text("@neo")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                
                UserStatsView()
                    .padding(.vertical)
            }
            .padding(.leading)
            
            ForEach(SideMenuViewModel.allCases,id:\.rawValue){ ViewModel in
                if(ViewModel == .profile){
                    NavigationLink{
                        ProfileView()
                    }
                    label:{
                        SideMenuOptionVIew(ViewModel: ViewModel)
                    }
                }
                else if ViewModel == .logout{
                    Button{
                        authSideview.signOut()
                    }
                label:{
                    SideMenuOptionVIew(ViewModel: ViewModel)
                    }
                }else{
                    SideMenuOptionVIew(ViewModel: ViewModel)
                }
            }
            .padding(.vertical , 4)
            
            Spacer()
        }
    }
}

#Preview {
    SideMenuView()
}

