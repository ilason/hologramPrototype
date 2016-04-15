//
//  ViewController.swift
//  hologramPrototype
//
//  Created by Aaron Eliason on 4/13/16.
//  Copyright © 2016 IlasonApps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var bottomLabel: UILabel!
    @IBOutlet weak var rightLabel: UILabel!
    @IBOutlet weak var leftLabel: UILabel!
    @IBOutlet weak var topLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        bottomLabel.transform = CGAffineTransformMakeRotation(3.14)
        rightLabel.transform = CGAffineTransformMakeRotation(3.14/2)
        leftLabel.transform = CGAffineTransformMakeRotation(3.14/(-2))
        
//        let scaleTransform = CGAffineTransformMakeScale(1, 1)
//
//        UIView.animateWithDuration(5.5) {
//            self.topLabel.alpha = 1.0
//            self.topLabel.center = CGPoint(x: self.topLabel.center.x, y: self.topLabel.center.y - -100)
//            self.topLabel.transform = scaleTransform
//        }
        
        let upAndDownAnimation = CAKeyframeAnimation()
        upAndDownAnimation.keyPath = "position.y"
        upAndDownAnimation.values = [50, 5, 9, 5, 1]
        upAndDownAnimation.duration = 9.0
        upAndDownAnimation.additive = true
        upAndDownAnimation.repeatCount = Float.infinity
        
        topLabel.layer.addAnimation(upAndDownAnimation, forKey: nil)
    
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
}


