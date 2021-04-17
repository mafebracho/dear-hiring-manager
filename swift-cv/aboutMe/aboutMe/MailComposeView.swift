//
//  MailComposeView.swift
//  aboutMe
//
//  Created by María Fernanda Bracho Salazar on 17.04.21.
//

import UIKit
import MessageUI
import SwiftUI

struct MailComposeView: UIViewControllerRepresentable {
    
    @Binding var isShowing: Bool
    
    func makeCoordinator() -> Coordinator {
        return Coordinator(isShowing: $isShowing)
    }
    
    func makeUIViewController(context: Context) -> some UIViewController {
        let vc = MFMailComposeViewController()
        vc.mailComposeDelegate = context.coordinator
        return vc
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
}

extension MailComposeView {
    
    class Coordinator: NSObject, MFMailComposeViewControllerDelegate {
        
        @Binding var isShowing: Bool
        init(isShowing: Binding<Bool>){
            self._isShowing = isShowing
        }
        
        func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
            self.isShowing = false
        }
    }
}
