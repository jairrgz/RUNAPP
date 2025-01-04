//
//  GoalStatusSubView.swift
//  RUN APP
//
//  Created by Jorge Jair Ramirez Gaston Zuloeta on 4/01/25.
//

import SwiftUI

struct GoalStatusSubView: View {
    var body: some View {
        HStack {
            Image(systemName: "trophy.fill")
                .foregroundStyle(.yellow)
            Text("Goal Reached")
                .font(.subheadline)
            Text("🥳")
            Spacer()
            Text("1/1 activity")
                .font(.subheadline)
                .foregroundStyle(.secondary)
        }
        .padding()
        .background {
            RoundedRectangle(cornerRadius: 12)
                .fill(.thinMaterial)
                .padding(.horizontal)
        }
    }
}

#Preview {
    GoalStatusSubView()
}
