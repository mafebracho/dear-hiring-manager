//
//  ContentView.swift
//  aboutMe
//
//  Created by María Fernanda Bracho Salazar on 08.04.21.
//


import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader { g in
            ZStack {
                Color(red: 170 / 255, green: 207 / 255, blue: 207 / 255)
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    Image("mafe")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 150, height: 150)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.white, lineWidth: 5))
                    Text("MAFE")
                        .font(Font.custom("Roboto-Regular", size: 30))
                        .bold()
                        .foregroundColor(.white)
                    Text("Software Developer")
                        .foregroundColor(.white)
                        .font(Font.custom("Roboto-Light", size: 20))
                        .padding(.bottom)
                    Divider()
                    VStack(alignment: .leading) {
                        HStack {
                            Text("0162 276 7407")
                                .foregroundColor(.white)
                                .font(Font.custom("Roboto-Light", size: 15))
                                .padding(.trailing)
                            Text("mafe.bracho@gmail.com")
                                .foregroundColor(.white)
                                .font(Font.custom("Roboto-Light", size: 15))
                                .padding(.leading, 50)
                        }
                        HStack {
                            Text("Linkedin")
                                .foregroundColor(.white)
                                .font(Font.custom("Roboto-Light", size: 15))
                                .padding(.trailing, 60)
                            Text("Github")
                                .foregroundColor(.white)
                                .font(Font.custom("Roboto-Light", size: 15))
                                .padding(.leading, 50)
                                .onTapGesture {
                                    let url = URL.init(string: "https://github.com/mafebracho")
                                    guard let gitHub = url, UIApplication.shared.canOpenURL(gitHub) else { return }
                                    UIApplication.shared.open(gitHub)
                                }
                        }
                    }
                    Divider()
                    Text("Linkedin")
                        .foregroundColor(.white)
                        .font(Font.custom("Roboto-Light", size: 20))
                        .padding()
                }
            }
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
