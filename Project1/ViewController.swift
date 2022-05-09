//
//  ViewController.swift
//  Project1
//
//  Created by Milosz Tabaka on 09/05/2022.
//

import UIKit

class ViewController: UIViewController {
    var pictures = [String]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        
        for item in items {
            if item.hasPrefix("nssl") {
                pictures.append(item)
            }
        }
        
        print(pictures)
    }
}

