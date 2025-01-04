//
//  StartButtonSubView.swift
//  RUN APP
//
//  Created by Jorge Jair Ramirez Gaston Zuloeta on 4/01/25.
//

import SwiftUI

struct StartButtonSubView: View {
    let activity: ActivityType
    
    var body: some View {
        Button {
            // Start workout action
        } label: {
            HStack {
                Text("START")
                    .font(.headline)
                Text(activity.name)
                    .font(.subheadline)
                Spacer()
                Image(systemName: "arrow.right")
            }
            .padding()
            .background(.black)
            .foregroundStyle(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding()
        }
    }
}

#Preview {
    StartButtonSubView(activity: .walking)
}
