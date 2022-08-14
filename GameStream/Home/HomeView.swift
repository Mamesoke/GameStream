//
//  HomeView.swift
//  GameStream
//
//  Created by Kevin Menendez on 14/8/22.
//

import SwiftUI

struct HomeView: View {
    enum Kind: Equatable {
        case login
        case register
    }
    
    @State var kind: HomeView.Kind = .login
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button("INICIA SESIÓN", action: {
                    print("Iniciando sesión")
                    kind = .login
                }).foregroundColor(isActive(button: .login) ? .white : .gray)
                Spacer()
                Button("REGÍSTRATE", action: {
                    print("Regístrate")
                    kind = .register
                }).foregroundColor(isActive(button: .register) ? .white : .gray)
                Spacer()
            }
            Spacer(minLength: 42)
            switch kind {
                case .login:
                    LoginView()
                case .register:
                    RegisterView()
            }
        }
    }
    
    func isActive(button: Kind) -> Bool {
        return kind == button
    }
    
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
