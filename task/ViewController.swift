//
//  ViewController.swift
//  task
//
//  Created by Irine Babu on 09/07/21.
//

import UIKit

class ViewController: UIViewController {
    
    var isActive : Bool = false
    
    @IBOutlet weak var clickin: UIButton!
    @IBAction func click(_ sender: AnyObject) {
        if isActive {
            isActive = false
            clickin.setImage(UIImage(named: "completed"), for: .normal)
            imagePic.image = UIImage(named: "success")
            label.text = "Completed"
        }
        else{
            isActive = true
            clickin.setImage(UIImage(named: "pending"), for: .normal)
            imagePic.image = UIImage(named: "Image")
            label.text = "Pending"
        }
        
    }
    
    @IBOutlet weak var imagePic: UIImageView!
    
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view, typically from a nib.
        }

    override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
    }


}
