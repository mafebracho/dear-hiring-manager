//
//  ContentView.swift
//  aboutMe
//
//  Created by María Fernanda Bracho Salazar on 08.04.21.
//


import SwiftUI

struct ContentView: View {
    
    @State var hovered = false
    
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
                        .overlay(Circle().stroke(Color.white, lineWidth: 3))
                        .padding(.top, 100)
                    Text("MAFE")
                        .font(Font.custom("Roboto-Regular", size: 40))
                        .bold()
                        .foregroundColor(.white)
                    Text("Software Developer")
                        .foregroundColor(.white)
                        .font(Font.custom("Roboto-Light", size: 25))
                        .padding(.bottom)
                    VStack(alignment: .leading) {
                        HStack {
                            let myNumber = "0162 276 7407"
                            Button(action: {
                                let phone = "tel:/"
                                let formattedStr = phone + myNumber
                                guard let url = URL(string: formattedStr) else { return }
                                UIApplication.shared.open(url)
                            }) {
                                Text(myNumber)
                                    .foregroundColor(.white)
                                    .font(Font.custom("Roboto-Light", size: 20))
                                    .padding(.leading)
                                    .scaleEffect(hovered ? 2.0 : 1.0)
                                    .animation(.default, value: hovered)
                                    .onHover { isHovered in
                                        self.hovered = isHovered
                                    }
                            }
                            Spacer()
                            Text("E-mail")
                                .foregroundColor(.white)
                                .font(Font.custom("Roboto-Light", size: 20))
                                .scaleEffect(hovered ? 2.0 : 1.0)
                                .animation(.default, value: hovered)
                                .onHover { isHovered in
                                    self.hovered = isHovered
                                }
                            Spacer()
                            Text("Linkedin")
                                .foregroundColor(.white)
                                .font(Font.custom("Roboto-Light", size: 20))
                                .scaleEffect(hovered ? 2.0 : 1.0)
                                .animation(.default, value: hovered)
                                .onHover { isHovered in
                                    self.hovered = isHovered
                                }
                                .onTapGesture {
                                    let url = URL.init(string: "https://www.linkedin.com/in/maria-fernanda-bracho/?locale=en_US")
                                    guard let linkedIn = url, UIApplication.shared.canOpenURL(linkedIn) else { return }
                                    UIApplication.shared.open(linkedIn)
                                }
                            Spacer()
                            Text("Github")
                                .foregroundColor(.white)
                                .font(Font.custom("Roboto-Light", size: 20))
                                .padding(.trailing)
                                .scaleEffect(hovered ? 2.0 : 1.0)
                                .animation(.default, value: hovered)
                                .onHover { isHovered in
                                    self.hovered = isHovered
                                }
                                .onTapGesture {
                                    let url = URL.init(string: "https://github.com/mafebracho")
                                    guard let gitHub = url, UIApplication.shared.canOpenURL(gitHub) else { return }
                                    UIApplication.shared.open(gitHub)
                                }
                        }
                    }
                    VStack {
                        Text("About me")
                            .foregroundColor(.gray)
                            .font(Font.custom("Roboto-Light", size: 25))
                            .padding(.top, 50)
                        Text("I used to be an architect but I don't build houses anymore. So if you want a developer that builds user-focused apps and strong and meaningful relationships in your team, get in touch and say hola!")
                            .foregroundColor(.gray)
                            .font(Font.custom("Roboto-Light", size: 20))
                            .padding(g.safeAreaInsets.top)
                        Spacer()
                    }
                    .background(Color.white).edgesIgnoringSafeArea(.bottom)
                    
                }
            }
            
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}