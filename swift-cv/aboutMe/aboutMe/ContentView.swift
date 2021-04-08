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
            Text("MARIA FERNANDA")
                .font(.title)
                .bold()
                .foregroundColor(.white)
                .padding()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
