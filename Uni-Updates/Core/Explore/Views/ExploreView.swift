//
//  ExploreView.swift
//  INDI-POLITICS
//
//  Created by Atharva Lavhate on 13/01/25.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVStack{
                    ForEach(0..<20, id: \.self){ _ in
                        NavigationLink{
                            ProfileView()
                        }
                        label:{
                            UserRowView()
                        }
                        
                        
                        
                    }
                    
                }
            }
            .navigationTitle("Explore")
            .navigationBarTitleDisplayMode(.inline)
        }
 
    }
}

#Preview {
    ExploreView()
}
