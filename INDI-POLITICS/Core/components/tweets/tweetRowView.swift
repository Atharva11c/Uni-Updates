//
//  tweetRowView.swift
//  INDI-POLITICS
//
//  Created by Atharva Lavhate on 13/01/25.
//

import SwiftUI

struct tweetRowView: View {
    var body: some View {
        VStack(alignment: .leading){
            // profile photo info and tweets
            HStack(alignment: .top, spacing: 4){
                Circle()
                    .frame(width: 64, height: 54)
                    .foregroundColor(Color(.systemBlue))
                //user info and tweets captions
                VStack(alignment: .leading, spacing: 4){
                    //user info
                    HStack{
                        Text("Atharva Lavhate")
                            .font(.subheadline).bold()
                        Text("@neo")
                            .foregroundColor(.gray)
                            .font(.caption)
                        Text("2w")
                            .font(.caption)
                            .foregroundColor(.gray)
                        
                        
                    }
                    
                    //tweet caption
                    Text("Suits is a goat TV show #Suits")
                        .font(.subheadline)
                        .multilineTextAlignment(.leading)
                    
                }
                
            }
            
            //Action buttons
            HStack{
                Button {
                    //action goes here...
                } label: {
                    Image(systemName: "bubble.left")
                        .font(.subheadline)
                }
                
                Spacer()
                
                Button {
                    //action goes here...
                } label: {
                    Image(systemName: "arrow.2.squarepath")
                        .font(.subheadline)
                }
                
                Spacer()
                
                Button {
                    //action goes here...
                } label: {
                    Image(systemName: "heart")
                        .font(.subheadline)
                }
                
                Spacer()
                
                Button {
                    //action goes here...
                } label: {
                    Image(systemName: "bookmark")
                        .font(.subheadline)
                }
            }
            
            .padding()
            .foregroundColor(.gray)
            Divider()
        }
    }
}

#Preview {
    tweetRowView()
}
