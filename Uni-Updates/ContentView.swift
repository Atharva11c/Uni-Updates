//
//  ContentView.swift
//  INDI-POLITICS
//
//  Created by Atharva Lavhate on 13/01/25.
//

import SwiftUI

struct ContentView: View {
    @State private var showMenu = false
    @EnvironmentObject var viewModel: AuthViewModel
    var body: some View {
        Group{
            //no user logged in
            if viewModel.userSession == nil{
                LoginView()
            }else{
                //logged in user
                mainContentView
            }
        }
    }
}

#Preview {
    NavigationView{
        ContentView()
            .environmentObject(AuthViewModel())
    }
}

extension ContentView {
    
    var mainContentView: some View {
        ZStack(alignment: .topLeading){
            mainTabView()
                .navigationBarHidden(showMenu)
            //blackout behing showmenu area and bring back screen
            if showMenu{
                ZStack{
                    Color.black
                        .opacity(showMenu ? 0.25: 0.0)
                }.onTapGesture {
                    withAnimation(.easeInOut){
                        showMenu = false
                    }
                }
                .ignoresSafeArea()
            }
            
            //side menu view,button and navigation head content
            SideMenuView()
                .frame(width: 300)
                .offset(x:showMenu ? 0 : -300, y:0)
                .background(showMenu ? Color.white: Color.clear)
        }
        
        .navigationTitle("Home")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar{
            ToolbarItem(placement: .navigationBarLeading){
                Button{
                    withAnimation(.easeInOut){
                        showMenu.toggle()
                    }
                    
                }
                label:{
                    Image(systemName: "line.3.horizontal")
                        .frame(width: 30, height: 30)
                        .foregroundColor(.black).bold()
                }
                    
            }
        }
        .onAppear{
            showMenu = false
        }
    }
}
