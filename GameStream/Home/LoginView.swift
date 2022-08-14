//
//  LoginView.swift
//  GameStream
//
//  Created by Kevin Menendez on 14/8/22.
//

import SwiftUI

struct LoginView: View {
    @State var email = ""
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
            }.padding(.horizontal, 77.0)
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
