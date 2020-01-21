//
//  todayViewController.swift
//  tview
//
//  Created by Apple MacBook Pro on 1/21/20.
//  Copyright © 2020 Apple MacBook Pro. All rights reserved.
//

import UIKit
let today = ["Saturday","Sunday","Monday","Tuesday","Wednesday","Thursday","Friday"]
class todayViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    
    @IBOutlet weak var date: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return today.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell2 = date.dequeueReusableCell(withIdentifier: "today")
        cell2?.textLabel?.text = today[indexPath.row]
        cell2?.accessoryType = .disclosureIndicator
        return cell2!
        
    }
    

    

}
