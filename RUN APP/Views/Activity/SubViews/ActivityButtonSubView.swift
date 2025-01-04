//
//  ActivityButtonSubView.swift
//  RUN APP
//
//  Created by Jorge Jair Ramirez Gaston Zuloeta on 4/01/25.
//

import SwiftUI

struct ActivityButtonSubView: View {
    let activity: ActivityType
    let isSelected: Bool
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            VStack {
                Image(systemName: activity.iconName)
                    .font(.title2)
                Text(activity.name)
                    .font(.caption)
            }
            .frame(width: 60)
            .padding(.vertical, 8)
            .background(isSelected ? Color.black : Color.clear)
            .foregroundStyle(isSelected ? .white : .primary)
            .clipShape(RoundedRectangle(cornerRadius: 8))
        }
    }
}

#Preview {
    ActivityButtonSubView(activity: .cycling, isSelected: true, action: {
        print("Jair was here")
    })
}
