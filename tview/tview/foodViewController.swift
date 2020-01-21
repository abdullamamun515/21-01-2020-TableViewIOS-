//
//  foodViewController.swift
//  tview
//
//  Created by Apple MacBook Pro on 1/21/20.
//  Copyright © 2020 Apple MacBook Pro. All rights reserved.
//

import UIKit
let elment = ["Mango","Banana","Apple","jackFruite","Dragon","Tomato"]

class foodViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    
    @IBOutlet weak var foodView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return elment.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = foodView.dequeueReusableCell(withIdentifier: "foodViewControler")
        cell?.textLabel?.text = elment[indexPath.row]
        cell?.accessoryType = .disclosureIndicator
        return cell!
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let alert = UIAlertController(title: "Did you are a register user", message: elment[indexPath.row], preferredStyle: .alert)

              alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: nil))
              alert.addAction(UIAlertAction(title: "No", style: .cancel, handler: nil))

              self.present(alert, animated: true)
    }
    

    

}
