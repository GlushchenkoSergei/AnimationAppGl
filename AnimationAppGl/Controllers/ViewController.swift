//
//  ViewController.swift
//  AnimationAppGl
//
//  Created by mac on 19.04.2022.
//

import Spring

class ViewController: UIViewController {

    @IBOutlet var ourView: SpringView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ourView.isHidden = true
        // Do any additional setup after loading the view.
    }

    @IBAction func ourButton(_ sender: SpringButton) {
        if ourView.isHidden {
            
        ourView.isHidden = false
        ourView.animation = "fadeIn"
        ourView.curve = "easeIn"
        ourView.duration = 2.1
        ourView.animate()
            
        } else {
           
            ourView.animation = "fadeOut"
            ourView.curve = "easeIn"
            ourView.duration = 1.0
            ourView.damping = 1.0
        ourView.velocity = 0.5
            ourView.animate()
         
        let color = CIColor(color: ourView.backgroundColor!)
        let number = color.alpha
            print("Значение альфа = \(number)")
        if number == 0 {
            ourView.isHidden = false
            print("Значение альфа = \(number)")
        }
        }
    
   
      
}
}
