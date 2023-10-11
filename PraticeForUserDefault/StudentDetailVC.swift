//
//  StudentDetailVC.swift
//  PraticeForUserDefault
//
//  Created by Saahil Kaushal on 11/10/23.
//

import UIKit

class StudentDetailVC: UIViewController {
    
    
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var addressLbl: UILabel!
    @IBOutlet weak var cityLbl: UILabel!
    @IBOutlet weak var mobileLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        let defaults = UserDefaults.standard
        
        nameLbl.text = defaults.string(forKey: "name") //as? String
        addressLbl.text = defaults.string(forKey: "address") //as? String
        cityLbl.text = defaults.string(forKey: "city") //as? String
        mobileLbl.text = defaults.string(forKey: "mobile") //as? String

        
    }
    

    

}
