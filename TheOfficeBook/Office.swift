//
//  Office.swift
//  TheOfficeBook
//
//  Created by Hüseyin Kaya on 3.05.2022.
//

import Foundation
import UIKit

class Office {
    
    var name : String
    var title : String
    var birthday : String
    var bestLine : String
    var image : UIImage
    
    init(officeName : String, officeTitle : String, officeBirthday : String, officeBestLine : String, officeImage : UIImage){
    
    name = officeName
    title = officeTitle
    birthday = officeBirthday
    bestLine = officeBestLine
    image = officeImage
        
        
    }
    
}
