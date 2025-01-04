//
//  WorkoutStatsSubView.swift
//  RUN APP
//
//  Created by Jorge Jair Ramirez Gaston Zuloeta on 4/01/25.
//

import SwiftUI

struct WorkoutStatsSubView: View {
    var body: some View {
        VStack(spacing: 16) {
            Text("00:00:00")
                .font(.system(size: 44, weight: .bold, design: .rounded))
                .monospacedDigit()
            
            HStack(spacing: 32) {
                StatItemSubView(value: "0.00", label: "Distance (km)")
                StatItemSubView(value: "0", label: "Calories (cal)")
                StatItemSubView(value: "00:00", label: "Avg. Pace (min/km)")
            }
            .padding(.horizontal)
        }
        .padding(.vertical, 20)
    }
}

#Preview {
    WorkoutStatsSubView()
}
