//
//  ViewController.swift
//  ReusableAlertcontroller
//
//  Created by MutasemW on 2022-01-19.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    class AlertView: NSObject {

     class func showAlert(view: UIViewController , message: String){

         let alert = UIAlertController(title: "Warning", message: message, preferredStyle: UIAlertController.Style.alert)
         alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
         alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertAction.Style.default, handler: { action  in
             print("sdfsdfsdf")
         }))
         view.present(alert, animated: true, completion: nil)
        }
    }

    @IBAction func btnTapped(_ sender: UIButton) {
        AlertView.showAlert(view: self, message: "Test alert")
      
        
    }
}

