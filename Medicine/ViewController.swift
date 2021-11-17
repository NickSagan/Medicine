//
//  ViewController.swift
//  Medicine
//
//  Created by Nick Sagan on 17.11.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func helloButton(_ sender: UIButton) {
        let x = Int.random(in: 0...3)
        var colour: UIColor = .systemRed
        
        switch x {
        case 0: colour = .systemBlue
        case 1: colour = .systemRed
        case 2: colour = .systemGray
        case 3: colour = .systemGreen
        default: colour = .systemRed
        }
        imageView.backgroundColor = colour
    }
    
}

