//
//  SideMenuOptionVIew.swift
//  INDI-POLITICS
//
//  Created by Atharva Lavhate on 23/01/25.
//

import SwiftUI

struct SideMenuOptionVIew: View {
    let ViewModel:SideMenuViewModel
    var body: some View {
        HStack(alignment: .center, spacing: 4 ){
            Image(systemName: ViewModel.imageName)
                .font(.headline)
                .foregroundColor(.gray)
            Text(ViewModel.description)
                .foregroundColor(.black)
                .font(.headline).bold()
                
            Spacer()
        }
        .padding()
    }
}

#Preview {
    SideMenuOptionVIew(ViewModel: .profile)
}
