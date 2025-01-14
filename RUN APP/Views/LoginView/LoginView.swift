//
//  LoginView.swift
//  RUN APP
//
//  Created by Jorge Jair Ramirez Gaston Zuloeta on 13/01/25.
//

import SwiftUI

struct LoginView: View {
    
    // MARK: - PROPERTIES
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var showAlert: Bool = false
    @State private var alertMessage: String = ""

    // MARK: - CONTENT BODY
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
           
            VStack(spacing: 20) {
                Text("Iniciar Sesión")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
                Spacer()
                
                VStack(spacing: 15) {
                    // Campo de correo electrónico
                    TextField("@mail.com", text: $email)
                        .foregroundColor(.blue)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                        .padding()
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(10)
                    
                    // Campo de contraseña
                    SecureField("Contraseña", text: $password)
                        .padding()
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(10)
                }
                .padding(.horizontal, 40)
                
                Button(action: {
                    // Lógica para iniciar sesión
                    if email.isEmpty || password.isEmpty {
                        alertMessage = "Por favor, complete todos los campos."
                        showAlert = true
                    } else {
                        // Agrega aquí la lógica de autenticación
                        alertMessage = "Inicio de sesión exitoso"
                        showAlert = true
                    }
                }) {
                    Text("Iniciar Sesión")
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                .padding(.horizontal, 40)
                
                Spacer()
                
                // Opción de registro
                HStack {
                    Text("¿No tienes cuenta?")
                        .foregroundColor(.white)
                    Button(action: {
                        // Navegar al registro
                    }) {
                        Text("Regístrate")
                            .fontWeight(.bold)
                            .foregroundColor(.blue)
                    }
                }
                
            }
            .padding()
            .alert(isPresented: $showAlert) {
                Alert(title: Text("Mensaje"), message: Text(alertMessage), dismissButton: .default(Text("OK")))
            }
        }
    }
}


#Preview {
    LoginView()
}
