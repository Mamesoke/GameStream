//
//  LoginView.swift
//  GameStream
//
//  Created by Kevin Menendez on 14/8/22.
//

import SwiftUI

struct LoginView: View {
    enum RRSS {
        case facebook
        case twitter
    }
    @State var email = ""
    @State var pwd = ""
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Text("Correo electrónico").foregroundColor(Color("dark-cian"))
                ZStack(alignment: .leading) {
                    if email.isEmpty {
                        Text(verbatim: "ejemplo@gmail.com")
                            .font(.caption)
                            .foregroundColor(.gray)
                    }
                    TextField("", text: $email)
                        .foregroundColor(Color(.white))
                }
                Divider().frame(height: 1).background(Color("dark-cian"))
                Text("Contraseña").foregroundColor(Color("dark-cian"))
                ZStack(alignment: .leading) {
                    if pwd.isEmpty {
                        Text(verbatim: "Escribe su contraseña")
                            .font(.caption)
                            .foregroundColor(.gray)
                    }
                    SecureField("", text: $pwd)
                        .foregroundColor(Color(.white))
                }
                Divider().frame(height: 1).background(Color("dark-cian"))
                Text("¿Olvidaste tu contraseña?")
                    .foregroundColor(Color("dark-cian"))
                    .font(.footnote)
                    .frame(width: 300, alignment: .trailing)
                    .padding(.bottom, 52)
                Button(action: login, label: {
                    Text("INICIAR SESIÓN")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, alignment: .center)
                        .padding(EdgeInsets(top: 11, leading: 18, bottom: 11, trailing: 18))
                        .overlay(RoundedRectangle(cornerRadius: 6).stroke(Color("dark-cian"), lineWidth: 1.0)).shadow(color: .white, radius: 3)
                })
                Text("Inicia sesión con tus redes sociales").foregroundColor(.white)
                HStack {
                    Button(action: {
                        login(withRRSS: .facebook)
                    }, label: {
                        Text("Facebook").foregroundColor(.white)
                    })
                    Button(action: {
                        login(withRRSS: .twitter)
                    }, label: {
                        Text("Twitter").foregroundColor(.white)
                    })
                }
            }.padding(.horizontal, 77.0)
        }
    }
    
    func login() {
        print("Login")
    }
    
    func login(withRRSS rrss: RRSS) {
        print(rrss)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
