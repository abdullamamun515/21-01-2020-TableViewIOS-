//
//  animalViewController.swift
//  tview
//
//  Created by Apple MacBook Pro on 1/21/20.
//  Copyright © 2020 Apple MacBook Pro. All rights reserved.
//

import UIKit

let animal1 = ["Cow","Dog","Cat","Dear","Lion","Tiger",]


class animalViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    
    @IBOutlet weak var animal: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animal1.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell1 = animal.dequeueReusableCell(withIdentifier: "Animal")
        cell1?.textLabel?.text = animal1[indexPath.row]
        cell1?.accessoryType = .disclosureIndicator
        return cell1!
        
    }

    

}
