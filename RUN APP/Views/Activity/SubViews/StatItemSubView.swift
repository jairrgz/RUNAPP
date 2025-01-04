//
//  StatItemSubView.swift
//  RUN APP
//
//  Created by Jorge Jair Ramirez Gaston Zuloeta on 4/01/25.
//

import SwiftUI

struct StatItemSubView: View {
    let value: String
    let label: String
    
    var body: some View {
        VStack(spacing: 4) {
            Text(value)
                .font(.system(size: 24, weight: .semibold, design: .rounded))
                .monospacedDigit()
            Text(label)
                .font(.caption2)
                .foregroundStyle(.secondary)
        }
    }
}

#Preview {
    StatItemSubView(value: "Jair", label: "Developer")
}
