//
//  BaseViewController.swift
//  NavController-TabbarController
//
//  Created by Vinh The on 7/16/16.
//  Copyright © 2016 Vinh The. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    // MARK: Update Contraints
    
    
    var transparent: Bool?{
        didSet{
            if transparent == true{
                setTransparentForUINavigationBar()
            }
        }
    }
    
    
    var setTitleForBackButton: String?{
        
        didSet{
            guard let title = self.setTitleForBackButton else {return}
            
            setTitleForBackButton(title)
        }
    
    }
    
    func setTransparentForUINavigationBar(){
        
        navigationController?.navigationBar.setBackgroundImage(UIImage(), forBarMetrics: .Default)
        
        navigationController?.navigationBar.shadowImage = UIImage()
        
        
    }
    
    
    func setTitleForBackButton(title: String){
        
        let backButton =  UIBarButtonItem()
        
        backButton.title = title
        
        navigationItem.backBarButtonItem = backButton
        
        
    }
    
    func updateContraint(contraint : NSLayoutConstraint!){
        print(contraint.constant)
        
        let scale = UIScreen.mainScreen().bounds.size.height / 667
        
        contraint.constant = contraint.constant * scale
        
        print(contraint.constant)
    }
    
}
