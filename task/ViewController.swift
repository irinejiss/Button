//
//  ViewController.swift
//  task
//
//  Created by Irine Babu on 09/07/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var checkButton: UIButton!
    @IBOutlet weak var imagePic: UIImageView!
    @IBOutlet weak var statusLabel: UILabel!
    
    var isActive : Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        }
    
    @IBAction func bittonPressed(_ sender: AnyObject) {
        if isActive {
            isActive = false
            
            checkButton.setBackgroundImage(UIImage(named: "completed"), for: .normal)
            imagePic.image = UIImage(named: "success")
            statusLabel.text = "Completed"
        }
        else{
            isActive = true
            checkButton.setBackgroundImage(UIImage(named: "pending"), for: .normal)
            imagePic.image = UIImage(named: "Image")
            statusLabel.text = "Pending"
        }
    }
}
