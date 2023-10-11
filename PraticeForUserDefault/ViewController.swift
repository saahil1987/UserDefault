//
//  ViewController.swift
//  PraticeForUserDefault
//
//  Created by Saahil Kaushal on 11/10/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var addressText: UITextField!
    @IBOutlet weak var mobileText: UITextField!
    @IBOutlet weak var cityText: UITextField!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func savrBtn(_ sender: UIButton) {
    
    
        let defaults = UserDefaults.standard
        
        defaults.set(nameText.text!, forKey: "name")
        defaults.set(addressText.text!, forKey: "address")
        defaults.set(mobileText.text!, forKey: "mobile")
        defaults.set(cityText.text!, forKey: "city")
        
        
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "StudentDetailVC")as! StudentDetailVC
        self.navigationController?.pushViewController(vc, animated: true)
        
    }


}

