//
//  ViewController.swift
//  AnimationAppGl
//
//  Created by mac on 19.04.2022.
//

import Spring
import Darwin

class ViewController: UIViewController {

    @IBOutlet var ourView: SpringView!
    @IBOutlet var preset: UILabel!
    @IBOutlet var buttonNextAnimate: SpringButton!
    
    var animate = Animation.getAnimations()
   
    override func viewDidLoad() {
        super.viewDidLoad()
        ourView.layer.cornerRadius = ourView.frame.height / 5
        buttonNextAnimate.layer.cornerRadius = buttonNextAnimate.frame.height / 2
        buttonNextAnimate.setTitle("\(animate.preset)", for: .normal)
    }
    
    
    @IBAction func PressedButtonNextAnimate(_ sender: SpringButton) {
       // Settings animation for the button
        sender.animation = "pop"
        sender.force = 0.1
        sender.animate()
        
        // Settings animation for the main view
        ourView.animation = animate.preset
        ourView.curve = animate.curve
        ourView.force = animate.force
        ourView.duration = animate.duration
        ourView.delay = animate.delay
        ourView.animate()
        
        preset.text = """
Present - \(animate.preset)
Curve: - \(animate.curve)
Force: - \(String(format: "%.2f", (animate.force)))
Duration: - \(String(format: "%.2f", (animate.duration)))
Delay: - \(String(format: "%.2f", (animate.delay)))
"""
        
        animate = Animation.getAnimations()
        sender.setTitle("\(animate.preset)", for: .normal)
    }
    
}
