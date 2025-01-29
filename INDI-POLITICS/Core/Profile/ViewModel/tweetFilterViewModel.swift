//
//  tweetFilterViewModel.swift
//  INDI-POLITICS
//
//  Created by Atharva Lavhate on 16/01/25.
//

import Foundation

enum tweetFilterViewModel: Int, CaseIterable {
    case opinion;
    case replies;
    case likes;
    
    var title: String {
        switch self {
        case .opinion: return "thoughts"
        case .replies: return "Replies"
        case .likes: return "Likes"
        }
    }
}
