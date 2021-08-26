//
//  ViewController.swift
//  PickOneCard
//
//  Created by Sophie Kim on 2021/08/09.
//

import UIKit
import SpriteKit
import Kingfisher

class ViewController: UIViewController {
    let skView = SKView()
    var imageView = UIImageView()
    var cards : [Card] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadBackground()
        fetchCards()
        print(cards)
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
    
    func fetchCards() {
        API.shared.call(url: "https://rws-cards-api.herokuapp.com/api/v1/cards", for: CardsResponse.self) {
             [weak self] response in
             guard let self = self else { return }

             switch response {
             case .success(let cardsResponse):
                 let cards = cardsResponse.cards
                 self.cards = cards!
             case .failure(let error):
                print(error)
                 break
             }
         }
     }
}

