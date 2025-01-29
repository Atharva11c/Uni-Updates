//
//  INDI_POLITICSApp.swift
//  INDI-POLITICS
//
//  Created by Atharva Lavhate on 13/01/25.
//

import SwiftUI
import Firebase
@main
struct INDI_POLITICSApp: App {
    @StateObject var viewModel = AuthViewModel()
    init () {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ContentView()
            }
            .environmentObject(viewModel)
        }
    }
}
