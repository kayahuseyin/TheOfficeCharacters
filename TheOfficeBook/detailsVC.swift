//
//  detailsVC.swift
//  TheOfficeBook
//
//  Created by Hüseyin Kaya on 3.05.2022.
//

import UIKit

class detailsVC: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
   
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var birthdayLabel: UILabel!
    @IBOutlet weak var bestLineLabel: UILabel!
    
    var selectedOfficer : Office?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        nameLabel.text = selectedOfficer?.name
        titleLabel.text = selectedOfficer?.title
        birthdayLabel.text = selectedOfficer?.birthday
        bestLineLabel.text = selectedOfficer?.bestLine
        imageView.image = selectedOfficer?.image
        
    }
    

    
}
