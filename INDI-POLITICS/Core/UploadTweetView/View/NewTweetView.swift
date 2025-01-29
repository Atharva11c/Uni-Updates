//
//  NewTweetView.swift
//  INDI-POLITICS
//
//  Created by Atharva Lavhate on 23/01/25.
//

import SwiftUI

struct NewTweetView: View {
    @State private var caption = ""
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Button{
                    presentationMode.wrappedValue.dismiss()
                }
                label:{
                    Text("Cancel")
                }
                
                Spacer()
                
                Button{
                    print("Update")
                }label:{
                    Text("Update")
                        .bold()
                        .padding(.horizontal)
                        .padding(.vertical, 10)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .clipShape(.capsule)
                }
            }
            .padding()
            Spacer()
            
            HStack(alignment: .top){
                Circle()
                    .frame(width: 60, height: 50)
                TextAreaView("what's happening?", text: $caption)
            }
            
        }
        
        
    }
}

#Preview {
    NewTweetView()
}
