//
//  ContentView.swift
//  aboutMe
//
//  Created by María Fernanda Bracho Salazar on 08.04.21.
//


import SwiftUI

struct ContentView: View {
    
    init(viewModel: ContentViewModel) {
        self.viewModel = viewModel
    }
    
    private let viewModel: ContentViewModel
    
    @State private var hovered = false
    
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
                            tappableText(withText: "Phone")
                                .padding(.leading)
                                .onTapGesture(perform: viewModel.phoneTapped)
                            Spacer()
                            tappableText(withText: "E-mail")
                                .onTapGesture(perform: viewModel.emailTapped)
                            Spacer()
                            tappableText(withText: "Linkedin")
                                .onTapGesture(perform: viewModel.linkedinTapped)
                            Spacer()
                            tappableText(withText: "Github")
                                .padding(.trailing)
                                .onTapGesture(perform: viewModel.githubTapped)
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
    
    private func tappableText(withText text: String) -> some View {
        Text(text)
            .foregroundColor(.white)
            .font(Font.custom("Roboto-Light", size: 20))
            .scaleEffect(hovered ? 2.0 : 1.0)
            .animation(.default, value: hovered)
            .onHover { isHovered in
                self.hovered = isHovered
            }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView(viewModel: ContentViewModel())
        }
    }
}
