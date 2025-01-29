//
//  SideMenuViewModel.swift
//  INDI-POLITICS
//
//  Created by Atharva Lavhate on 20/01/25.
//

import Foundation

enum SideMenuViewModel: Int, CaseIterable {
    case profile
    case news
    case Bookmarks
    case logout
    
    var description: String {
        switch self {
        case.profile: return "Profile"
        case.news: return "News"
        case.Bookmarks: return "Bookmarks"
        case.logout: return "Logout"
        }
    }
    
    var imageName: String {
        switch self {
        case.profile: return "person"
        case.news: return "list.bullet"
        case.Bookmarks: return "bookmark"
        case.logout: return "arrow.left.square"
        }
    }
}


