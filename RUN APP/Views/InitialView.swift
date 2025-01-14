//
//  LoginView.swift
//  RUN APP
//
//  Created by Jorge Jair Ramirez Gaston Zuloeta on 13/01/25.
//

import SwiftUI

struct InitialView: View {
    
    
    var body: some View {
        VStack(spacing: 24) {
            // Header section
            VStack(spacing: 16) {
                
                Image(.screenshot20250113At60111PM)
                    .resizable()
                Text("RUNAPP") // AGREGAR UN LOGO
                    .font(.title2)
                    .fontWeight(.bold)
                
                Text("Bienvenido a RUNAPP")
                    .font(.title)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                
                Text("Corre con nosotros y descubre lo que eres capaz de hacer.")
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
    }
}


#Preview {
    InitialView()
}
       
