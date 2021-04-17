//
//  ContentViewModel.swift
//  aboutMe
//
//  Created by María Fernanda Bracho Salazar on 17.04.21.
//

import UIKit

class ContentViewModel {
    
    func phoneTapped() {
        let myNumber = "Phone"
        let phone = "tel:/"
        let formattedStr = phone + myNumber
        guard let url = URL(string: formattedStr) else { return }
        UIApplication.shared.open(url)
    }
    
    func emailTapped() {
        
    }
    
    func linkedinTapped() {
        let url = URL.init(string: "https://www.linkedin.com/in/maria-fernanda-bracho/?locale=en_US")
        guard let linkedIn = url, UIApplication.shared.canOpenURL(linkedIn) else { return }
        UIApplication.shared.open(linkedIn)
    }
    
    func githubTapped() {
        let url = URL.init(string: "https://github.com/mafebracho")
        guard let gitHub = url, UIApplication.shared.canOpenURL(gitHub) else { return }
        UIApplication.shared.open(gitHub)
    }
    
}
