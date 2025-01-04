//
//  ActivityView.swift
//  RUN APP
//
//  Created by Jorge Jair Ramirez Gaston Zuloeta on 4/01/25.
//

import SwiftUI
import MapKit

// MARK: - Main Workout View
struct ActivityView: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 1.3721, longitude: 103.8458),
        span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
    )
    
    @State private var selectedActivity: ActivityType = .cycling
    
    var body: some View {
        VStack(spacing: 0) {
            // Stats Section
            WorkoutStatsSubView()
            
            // Map View
            Map(coordinateRegion: $region)
                .frame(maxWidth: .infinity)
                .frame(height: UIScreen.main.bounds.height * 0.4)
            
            // Goal Status
            GoalStatusSubView()
            
            // Activity Selection
            ActivitySelectionSubView(selectedActivity: $selectedActivity)
            
            // Start Button
            StartButtonSubView(activity: selectedActivity)
            
            Spacer()
        }
    }
}

// MARK: - Preview
#Preview {
    MainTabView()
}
