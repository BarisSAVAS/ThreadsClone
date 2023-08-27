//
//  ProfileThreadsFilter.swift
//  ThreadsClone
//
//  Created by Barış Savaş on 27.08.2023.
//

import Foundation

enum ProfileThreadsFilter: Int , Identifiable , CaseIterable {
    var id : Int {return self.rawValue}
    case threads
    case replies
    case likes
    
    var title: String {
        switch self {
        case .threads : return "Threads"
        case .replies : return "Replies"
        case . likes : return "Likes"
        }
    }
}
