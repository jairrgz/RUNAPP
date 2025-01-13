//
//  OnboardingView.swift
//  RUN APP
//
//  Created by Jorge Jair Ramirez Gaston Zuloeta on 13/01/25.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        ZStack {
            Image(.runappLaunch)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
        }
        Text("Hello")
        

    }
}

#Preview {
    OnboardingView()
}
