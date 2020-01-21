//
//  selectOn.swift
//  tview
//
//  Created by Apple MacBook Pro on 1/21/20.
//  Copyright © 2020 Apple MacBook Pro. All rights reserved.
//

import UIKit

class selectOn: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func FoodList(_ sender: Any) {
        let vc1 = storyboard?.instantiateViewController(withIdentifier: "foodViewController") as! foodViewController
        self.navigationController?.pushViewController(vc1, animated: true)
        
    }
    
    
    @IBAction func Animal(_ sender: Any) {
        let vc2 = storyboard?.instantiateViewController(withIdentifier: "animalViewController") as! animalViewController
        self.navigationController?.pushViewController(vc2, animated: true)
        
    }
    

    @IBAction func Today(_ sender: Any) { let vc3 = storyboard?.instantiateViewController(withIdentifier: "todayViewController") as! todayViewController
    self.navigationController?.pushViewController(vc3, animated: true)
    }
}
