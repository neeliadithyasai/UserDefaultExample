//
//  UserDefaultViewController.swift
//  UserDefaultExample
//
//  Created by MacStudent on 2020-03-04.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class welcomeViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let ud = UserDefaults.standard
        let name = ud.string(forKey: "name")
        label.text = "welcome ,\(name)"
        
        

        // Do any additional setup after loading the view.
    }
    

    @IBAction func btnremove(_ sender: UIButton) {
        UserDefaults.standard.removeObject(forKey: "name")
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
