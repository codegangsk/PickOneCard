//
//  ViewController.swift
//  PickOneCard
//
//  Created by Sophie Kim on 2021/08/09.
//

import UIKit
import SpriteKit

class ViewController: UIViewController {
    let skView = SKView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadBackGround()
    }
}

extension ViewController {
    func loadBackground() {
        let scene = TarotScene(size: CGSize(width: 1024, height: 768))
        self.view = skView
        
        skView.showsFPS = true
        skView.showsNodeCount = true
        skView.ignoresSiblingOrder = false
        scene.scaleMode = .aspectFill
        skView.presentScene(scene)
    }
}
