//
//  ContentView.swift
//  Messenger
//
//  Created by Andras Strublics on 16/08/2020.
//  Copyright © 2020 Andras Strublics. All rights reserved.
//

//import SwiftUI
//
//struct ConverstationsViewController: View {
//    var body: some View {
//        Text("Hello, World!")
//    }
//}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ConverstationsViewController()
//    }
//}

import UIKit

class ConverstationsViewController: UIViewController {
    
    override func viewDidLoad(){
        super.viewDidLoad()
        view.backgroundColor = .red
    }
    
    override func viewDidAppear(_ animated: Bool){
        super.viewDidAppear(animated)
        
        let isLoggedIn = UserDefaults.standard.bool(forKey: "logged_in")
        if !isLoggedIn {
            let vc = LoginViewController()
            let nav = UINavigationController(rootViewController: vc)
            nav.modalPresentationStyle = .fullScreen
            present(nav, animated: false)
        }
    }
}
