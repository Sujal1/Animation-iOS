//
//  ViewController.swift
//  LottieAnimation
//
//  Created by Sujal on 3/9/19.
//  Copyright © 2019 Sujal. All rights reserved.
//

import UIKit
import Lottie

class ViewController: UIViewController {

    let animationView  = LOTAnimationView(name: "loader")
    
    var isAnimating: Bool!
    
    @IBOutlet weak var buttonAnimate: UIButton!
    
    @IBAction func beginAnimation(_ sender: Any) {
        if isAnimating {
            animationView.stop()
            animationView.removeFromSuperview()
            buttonAnimate.setTitle("Animate", for: .normal)
        } else {
            view.addSubview(animationView)
            animationView.play()
            buttonAnimate.setTitle("Stop", for: .normal)
        }
        isAnimating = !isAnimating
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpInitialCondition()
        setUpAnimationView()
    }

    func setUpInitialCondition() {
        isAnimating = false
        buttonAnimate.setTitle("Animate", for: .normal)
    }
    
    func setUpAnimationView() {
        animationView.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height - 50)
        animationView.contentMode = .scaleAspectFit
        animationView.loopAnimation = true
    }

}

