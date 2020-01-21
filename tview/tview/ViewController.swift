//
//  ViewController.swift
//  tview
//
//  Created by Apple MacBook Pro on 1/21/20.
//  Copyright © 2020 Apple MacBook Pro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    func messege(msg:String) {
       let alert = UIAlertController(title: "Did you are a register user", message: msg, preferredStyle: .alert)

       alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: nil))
       alert.addAction(UIAlertAction(title: "No", style: .cancel, handler: nil))

       self.present(alert, animated: true)
    }

    @IBOutlet weak var Login: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "My App"; Login.layer.cornerRadius=10
    }
let name = "Admin"
    let email = "Abdulla@gmail.com"
    
    @IBOutlet weak var username: UITextField!
    
    
    @IBOutlet weak var usremail: UITextField!
    
    @IBAction func Login(_ sender: Any) {
        if((username.text! == "") && (usremail.text! == "")){
            messege(msg: "Username and email is undefined")
        } else if(username.text! == ""){
            messege(msg: "Username  is undefined")
        }else if(usremail.text! == ""){
             messege(msg: "Useremail  is undefined")
        }else{
            if (username.text! == name) && (usremail.text! == email) {
                
                let vc = storyboard?.instantiateViewController(withIdentifier: "selectOn") as! selectOn
                self.navigationController?.pushViewController(vc, animated: true)
            }else{
                messege(msg: "wrong user name or email")
            }
        
        }
    }
    
}

