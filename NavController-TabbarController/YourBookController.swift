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
        
        let rightButton = UIBarButtonItem(image: UIImage(named: "EMAIL"), style: .Plain, target: self, action: #selector(sendEmail))
        
        let buttons = [cameraButtonItem, rightButton]
        
        navigationItem.setRightBarButtonItems(buttons, animated: true)
        
        navigationItem.setLeftBarButtonItems(buttons, animated: true)
        
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
