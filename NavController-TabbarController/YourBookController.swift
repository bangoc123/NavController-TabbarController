//
//  YourBookController.swift
//  NavController-TabbarController
//
//  Created by Vinh The on 7/16/16.
//  Copyright © 2016 Vinh The. All rights reserved.
//

import UIKit

class YourBookController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let cameraButtonItem = UIBarButtonItem(barButtonSystemItem: .Camera, target: self, action: #selector(takeAPicture))
        
//        navigationItem.leftBarButtonItem = cameraButtonItem
        
        let emailButton = UIBarButtonItem(image: UIImage(named: "EMAIL"), style: .Plain, target: self, action: #selector(sendEmail))
        
        let messageButton = UIBarButtonItem(image: UIImage(named: "MESSAGE"), style: .Plain, target: self, action: #selector(sendMessage))
        
        let instagramButton = UIBarButtonItem(image: UIImage(named: "INSTAGRAM"), style: .Plain, target: self, action: #selector(instagram))

        
        
        
        let leftButtons = [cameraButtonItem, emailButton]
        
        let rightButtons = [messageButton, instagramButton]
        
        navigationItem.setLeftBarButtonItems(leftButtons, animated: true)
        
        navigationItem.setRightBarButtonItems(rightButtons, animated: true)

    }
    
    func instagram(){
        print("Let instagram")
    }
    
    func sendMessage(){
        print("Send message")
    }
    
    
    func takeAPicture(){
        print("Take a pictue")
    
    }
    
    
    func sendEmail(){
        print("Send an email")
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
