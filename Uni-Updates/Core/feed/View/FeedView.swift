//
//  FeedView.swift
//  INDI-POLITICS
//
//  Created by Atharva Lavhate on 13/01/25.
//

import SwiftUI

struct FeedView: View {
    @State private var showNewTweetView = false
    var body: some View {
        ZStack(alignment: .bottomTrailing){
            ScrollView{
                LazyVStack{
                    ForEach(0..<20, id: \.self){ _ in
                        
                        tweetRowView()
                            .padding()
                        
                    }
                    
                }
            }
            
            Button{
                showNewTweetView.toggle()
            }label:{
                Image("bell")
                    .resizable()
                    .renderingMode(.template)
                    .frame(width: 50, height: 50)
                    .foregroundColor(.white)
                    
            }
            
            .background(Color(.systemBlue))
            .foregroundColor(.white)
            .clipShape(.circle)
            .offset(x: 0, y: -40)
            .padding()
            .fullScreenCover(isPresented: $showNewTweetView){
                NewTweetView()
            }
        }
    }
}

#Preview {
    FeedView()
}
