//
//  ContentView.swift
//  GameStream
//
//  Created by Kevin Menendez on 14/8/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(.sRGB, red: 19/255, green: 30/255, blue: 53/255, opacity: 1.0)
                .ignoresSafeArea()
            VStack {
                HStack {
                    Image("logo_icon").resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 45)
                    Image("logo_name").resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 250)
                }.padding(.bottom, 42)
                HomeView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Image("screen2").resizable()
        ContentView()
    }
}
