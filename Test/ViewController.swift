//
//  ViewController.swift
//  Test
//
//  Created by Abbas on 1/11/19.
//  Copyright © 2019 Test. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        makeStatusBarGradient()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .default
    }

    func makeStatusBarGradient(){
        
        //Change status bar color
        if let layers = self.view.layer.sublayers?.filter({$0.name == "gradient"}){
            if (layers.count == 0){
                let gradientLayer1 = CAGradientLayer()
                gradientLayer1.frame = UIApplication.shared.statusBarFrame
                gradientLayer1.colors = [UIColor.blue.cgColor, UIColor.green.cgColor]
                gradientLayer1.startPoint = CGPoint(x: 0.0, y: 0.5)
                gradientLayer1.endPoint = CGPoint(x: 1.0, y: 0.5)
                gradientLayer1.cornerRadius = 0
                gradientLayer1.zPosition = +1
                gradientLayer1.name = "gradient"
                self.view.layer.addSublayer(gradientLayer1)
            }else{
                layers[0].isHidden = false
            }
        }else{
            let gradientLayer1 = CAGradientLayer()
            gradientLayer1.frame = UIApplication.shared.statusBarFrame
            gradientLayer1.colors = [UIColor.blue.cgColor, UIColor.green.cgColor]
            gradientLayer1.startPoint = CGPoint(x: 0.0, y: 0.5)
            gradientLayer1.endPoint = CGPoint(x: 1.0, y: 0.5)
            gradientLayer1.cornerRadius = 0
            gradientLayer1.zPosition = +1
            gradientLayer1.name = "gradient"
            self.view.layer.addSublayer(gradientLayer1)
        }
    }
    
    func addGradientSubLayer(view: UIView){
        let gradientLayer1 = CAGradientLayer()
        gradientLayer1.frame = view.frame
        gradientLayer1.colors = [UIColor.blue.cgColor, UIColor.green.cgColor]
        gradientLayer1.startPoint = CGPoint(x: 0.0, y: 0.5)
        gradientLayer1.endPoint = CGPoint(x: 1.0, y: 0.5)
        gradientLayer1.cornerRadius = 0
        gradientLayer1.zPosition = +1
        gradientLayer1.name = "gradient"
        //Change status bar color
        view.layer.addSublayer(gradientLayer1)
    }

}

