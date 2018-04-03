//
//  ViewController.swift
//  AlienView03
//
//  Created by D7703_13 on 2018. 4. 3..
//  Copyright © 2018년 gyuminpark. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var counter = 1
    var direction = true
    
    
    @IBOutlet weak var alien_Image_View: UIImageView!
    @IBOutlet weak var alienImageNumber: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    //1st 이미지가 출력
     alien_Image_View.image = UIImage(named: "frame1.png")
        
    }

   
    @IBAction func update_image(_ sender: UIButton) {
        
        if counter == 5 {
            direction = false
        } else if counter == 1{
            direction = true
        }
        
        if direction == true {
            counter += 1
        } else if direction == false {
            counter -= 1
        }
        
        alienImageNumber.text = "\(counter)"
        alien_Image_View.image = UIImage(named: "frame\(counter).png")
    }
    
}

