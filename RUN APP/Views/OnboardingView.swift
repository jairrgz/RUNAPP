//
//  OnboardingView.swift
//  RUN APP
//
//  Created by Jorge Jair Ramirez Gaston Zuloeta on 13/01/25.
//

import SwiftUI

struct OnboardingView: View {
    
    @State private var navigationPath = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $navigationPath, root: {
            ZStack {
                Image(.runappLaunch)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    
                    Button {
                        navigationPath.append("LoginView")
                    } label: {
                        Text("Sigue corriendo")
                            .padding(.horizontal, 60)
                            .padding(.vertical, 30)
                            .foregroundColor(.black)
                            .font(.title3)
                            .background(RoundedRectangle(cornerRadius: 25))
                            .foregroundColor(.white)
                    }
                    
                    Spacer()
                    
                }
            }
            .navigationDestination(for: String.self) { value in
                if value == "LoginView" {
                    InitialView()
                }
            }
            
            .gesture(
                DragGesture()
                    .onEnded { value in
                        if value.translation.width < -100 { // Si el arrastre es hacia la izquierda
                            navigationPath.append("LoginView") // Navegar a la siguiente vista
                        }
                    }
            )
            
        })
    }
    
    
}


#Preview {
    OnboardingView()
}
