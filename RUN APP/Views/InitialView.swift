//
//  InitialView.swift
//  RUN APP
//
//  Created by Jorge Jair Ramirez Gaston Zuloeta on 13/01/25.
//

import SwiftUI

struct InitialView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @State private var navigationPath = NavigationPath()
    
    var body: some View {
        VStack(spacing: 24) {
            // Header section
            VStack(spacing: 16) {
                
                Image(.screenshot20250113At60111PM)
                    .resizable()
                
                Text("Bienvenido")
                    .font(.title)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                
                Text("Establece tu límite, tu camino y tu marca")
                    .font(.body)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.gray)
            }
            .padding(.horizontal)
            
            // Buttons section
            VStack(spacing: 12) {
                
                RunAppGeneralButtonSubView(title: "Iniciar Sesion", isPrimary: true) {
                    
                }
                
                RunAppGeneralButtonSubView(title: "Regístrate", isPrimary: false) {
                    
                }
                
            }
            .padding(.horizontal)
            
            // Terms and conditions
            Text("Al continuar, aceptas los términos de uso y la política de privacidad de RUNAPP")
                .font(.caption)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.black)
        .foregroundColor(.white)
        .gesture(
            DragGesture()
                .onEnded { value in
                    if value.translation.width > 100 { // Deslizamiento hacia la derecha
                        presentationMode.wrappedValue.dismiss() // Navegar hacia atrás
                    }
                }
        )
    }
}


#Preview {
    InitialView()
}
       
