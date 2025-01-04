//
//  Enums.swift
//  RUN APP
//
//  Created by Jorge Jair Ramirez Gaston Zuloeta on 4/01/25.
//

import Foundation

// MARK: - Models
enum ActivityType: Int, CaseIterable, Identifiable {
    case cycling, running, walking
    
    var id: Int { rawValue }
    
    var name: String {
        switch self {
        case .cycling: return "Cycling"
        case .running: return "Running"
        case .walking: return "Walking"
        }
    }
    
    var iconName: String {
        switch self {
        case .cycling: return "bicycle"
        case .running: return "figure.run"
        case .walking: return "figure.walk"
        }
    }
}

enum TabItem: Int, CaseIterable, Identifiable {
    case feed, community, activity, progress, profile
    
    var id: Int { rawValue }
    
    var name: String {
        switch self {
        case .feed: return "Feed"
        case .community: return "Community"
        case .activity: return "Activity"
        case .progress: return "Progress"
        case .profile: return "Profile"
        }
    }
    
    var iconName: String {
        switch self {
        case .feed: return "list.bullet"
        case .community: return "person.2"
        case .activity: return "bolt.fill"
        case .progress: return "chart.bar"
        case .profile: return "person.circle"
        }
    }
}
