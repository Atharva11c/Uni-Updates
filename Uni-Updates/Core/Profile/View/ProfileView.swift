//
//  ProfileView.swift
//  INDI-POLITICS
//
//  Created by Atharva Lavhate on 14/01/25.
//

import SwiftUI

struct ProfileView: View {
    @State private var selectedFilter:tweetFilterViewModel = .opinion
    @Environment(\.presentationMode) var mode
    @Namespace var Animation
    
    var body: some View {
        VStack(alignment: .leading){
            headerView
            actionButtons
            profileInfo
            opinionFilterView
            opinionView
            
            
            Spacer()
            
        }
    }
}

#Preview {
    ProfileView()
}

extension ProfileView{
    var headerView: some View{
        ZStack(alignment: .bottomLeading){
            Color(.systemBlue)
                .ignoresSafeArea()
                .frame(height: 148)
            
            VStack{
                Button{
                    mode.wrappedValue.dismiss()
                }
                label:{
                    Image(systemName: "arrow.left")
                        .resizable()
                        .frame(width: 24, height: 22)
                        .foregroundColor(.white)
                        .offset(x: 18, y: -148)
                }
            }
            
            Circle()
                .frame(width: 96, height: 96)
                .offset(x: 16, y: 24)
        }
    }
    
    var actionButtons: some View{
        HStack(spacing: 12){
            Spacer()
            Image(systemName: "bell.badge")
                .font(.title3)
                .padding(6)
                .overlay(Circle().stroke(Color.gray , lineWidth: 0.75))
            
            Button{
                
            }
        label:{
                Text("Edit Profile")
                .font(.subheadline).bold()
                .frame(width: 138, height: 38)
                .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.gray,lineWidth: 0.75))
                .foregroundColor(.blue)
                
            }
                
        }
        .padding(.trailing)
        
    }
    
    var profileInfo: some View{
        //name,username,blue tick,bio,followers,following
        VStack(alignment:.leading,spacing: 4){
            //name,blue tick
            HStack{
                Text("Atharva Lavhate")
                    .font(.title2).bold()
                    .padding(.leading)
                Image(systemName:"checkmark.seal.fill")
                    .foregroundColor(Color(.systemBlue))
                
            }
            //username
            Text("@neo")
                .font(.subheadline)
                .foregroundColor(Color(.gray))
                .padding(.leading)
            
            //bio
            Text("doing my own stuff!!")
                .font(.subheadline)
                .padding(.vertical)
                .padding(.leading)
            
            //followers and following
            HStack{
                //followers,following
                HStack{
                    Text("289")
                        .font(.subheadline).bold()
                    Text("Followers")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    
                    Text("277")
                        .font(.subheadline).bold()
                    Text("Following")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                .padding(.leading)
                
            }
            
        }
    }
    
    var opinionFilterView: some View {
        HStack{
            ForEach(tweetFilterViewModel.allCases, id: \.rawValue) { item in
                
                VStack{
                    Text(item.title)
                        .font(.headline)
                        .fontWeight(selectedFilter==item ? .semibold : .regular)
                        .foregroundColor(selectedFilter == item ? .black : .gray)
                    
                    if selectedFilter == item {
                        Capsule()
                            .foregroundColor(Color(.systemBlue))
                            .frame(width: 107, height: 6)
                            .matchedGeometryEffect(id: "Filter", in: Animation)
                    }
                    else{
                        Capsule()
                            .foregroundColor(Color(.clear))
                            .frame(height: 6)
                    }
                }
                
                .onTapGesture{
                    withAnimation(.easeInOut){
                        self.selectedFilter = item
                    }
                }

            }

        }
        .overlay(Divider().offset(x:0 , y: 16))
        .padding(.top)
    }
    
    var opinionView: some View {
        ScrollView{
            LazyVStack{
                ForEach(0..<10){ _ in
                    tweetRowView()
                
                }
                .padding(.top)
            }
        }
    }
}


