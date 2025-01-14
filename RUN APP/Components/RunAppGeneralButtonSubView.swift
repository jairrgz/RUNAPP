//
//  RunAppGeneralButtonSubView.swift
//  RUN APP
//
//  Created by Jorge Jair Ramirez Gaston Zuloeta on 13/01/25.
//

import SwiftUI

struct RunAppGeneralButtonSubView: View {
    
    // MARK: - PROPERTIES
    let title: String
    let isPrimary: Bool
    let action: () -> Void
    
    // MARK: - BUILDER
    init(title: String, isPrimary: Bool, action: @escaping () -> Void) {
        self.title = title
        self.isPrimary = isPrimary
        self.action = action
    }
    
    // MARK: - CONTENT BODY
    var body: some View {
        Button(action: action) {
            Text(title)
                .frame(maxWidth: .infinity)
                .foregroundColor(isPrimary ? .white: .blue)
                .frame(height: 50)
                .background(isPrimary ? .blue : Color(.systemGray6))
                .foregroundColor(.white)
                .cornerRadius(25)
        }
    }
}


#Preview {
    RunAppGeneralButtonSubView(title: "HOLA", isPrimary: true, action: {
        
    })
    .padding(.horizontal)
}
