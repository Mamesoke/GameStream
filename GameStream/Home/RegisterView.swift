//
//  RegisterView.swift
//  GameStream
//
//  Created by Kevin Menendez on 14/8/22.
//

import SwiftUI

struct RegisterView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .center) {
                Text("Elije una foto de perfil")
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                Text("Puedes cambiar o elegirla más adelante")
                    .font(.footnote)
                    .fontWeight(.light)
                    .foregroundColor(.gray)
                Button(action: takePicture, label: {
                    ZStack {
                        Image("profile")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 80, height: 80)
                        Image(systemName: "camera")
                            .foregroundColor(.white)
                    }
                })
            }
        }
    }
    
    func takePicture() {
        print("New picture!")
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
