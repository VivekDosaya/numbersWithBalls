//
//  ViewController.swift
//  numbersWithBalls
//
//  Created by Vivek Dosaya on 27/08/19.
//  Copyright © 2019 Vivek Dosaya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ball: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        update()
        // Do any additional setup after loading the view.
    }
    func update(){
        ball.image = UIImage(named: "ball\(Int.random(in: 1...5))")
    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        update()
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        update()
        
    }
    
}

