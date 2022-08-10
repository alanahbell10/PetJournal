//
//  Entry.swift
//  PetJournal
//
//  Created by Alanah Bell on 8/6/22.
//

import Foundation
import UIKit
import SwiftUI

struct Entry {
    
    let caption: String
    let isPrivate: Bool
    let picture: UIImage
    
    //var image = UIImage(named:"ImageName")
    
    init() {
        self.caption = "test caption"
        self.isPrivate = false
        //let picture = UIImage(named: "test.jpeg")
        self.picture = UIImage(imageLiteralResourceName: "moon.jpeg")
    }
    
    init(caption: String, photoString: String) {
        self.caption = caption
        self.isPrivate = false
        //let picture = UIImage(named: "test.jpeg")
        self.picture = UIImage(imageLiteralResourceName: photoString)
    }
    

    
    //UIImage(data: instanceOfSomeImage.photo)!
}
