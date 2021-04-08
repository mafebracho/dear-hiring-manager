//
//  ContentView.swift
//  aboutMe
//
//  Created by María Fernanda Bracho Salazar on 08.04.21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 170 / 255, green: 207 / 255, blue: 207 / 255)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Text("MAFE")
                    .font(Font.custom("Roboto-Regular", size: 40))
                    .bold()
                    .foregroundColor(.white)
//                    .padding()
                Text("Software Developer")
                    .foregroundColor(.white)
                    .font(Font.custom("Roboto-Light", size: 25))
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
