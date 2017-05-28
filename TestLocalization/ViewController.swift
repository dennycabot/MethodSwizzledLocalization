//
//  ViewController.swift
//  TestLocalization
//
//  Created by Denny Mathew on 15/05/17.
//  Copyright © 2017 Denny Mathew. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    @IBAction func switchLanguage(_ sender: Any) {
        
        switchAppLanguage()
        
        let rootVC: UIWindow = ((UIApplication.shared.delegate?.window)!)!
        rootVC.rootViewController = self.storyboard?.instantiateViewController(withIdentifier: "rootView")
    }
    
    @IBAction func actNext(_ sender: UIButton) {
        
        
    }
}
