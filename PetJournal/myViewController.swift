//
//  myViewController.swift
//  PetJournal
//
//  Created by Alanah Bell on 8/7/22.
//

import Foundation
import UIKit

class MyViewController : UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let view = UIView()
        view.backgroundColor = .white
        
        // Create UIButton
        let myButton = UIButton(type: .system)
        
        // Position Button
        myButton.frame = CGRect(x: 20, y: 20, width: 100, height: 50)

        // Set text on button
        myButton.setTitle("Tap me", for: .normal)
        myButton.setTitle("Pressed + Hold", for: .highlighted)
        
        // Set button action
         myButton.addTarget(self, action: #selector(buttonAction(_:)), for: .touchUpInside)
        
        view.addSubview(myButton)
        self.view = view
    }
    
    @objc func buttonAction(_ sender:UIButton!)
    {
        print("Button tapped")
    }
    
}

