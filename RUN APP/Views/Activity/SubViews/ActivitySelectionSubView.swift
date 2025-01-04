//
//  ActivitySelectionSubView.swift
//  RUN APP
//
//  Created by Jorge Jair Ramirez Gaston Zuloeta on 4/01/25.
//

import SwiftUI

struct ActivitySelectionSubView: View {
    @Binding var selectedActivity: ActivityType
    
    var body: some View {
        HStack(spacing: 20) {
            ForEach(ActivityType.allCases) { activity in
                ActivityButtonSubView(
                    activity: activity,
                    isSelected: activity == selectedActivity
                ) {
                    selectedActivity = activity
                }
            }
        }
        .padding()
    }
}
    

#Preview {
    ActivitySelectionSubView(selectedActivity: .constant(.cycling))
}

