//
//  ViewController.swift
//  PickOneCard
//
//  Created by Sophie Kim on 2021/08/09.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        parse(jsonData: JSONFileReader.readLocalJsonFile(forFileName: "tarot-images")!)
    }
}

