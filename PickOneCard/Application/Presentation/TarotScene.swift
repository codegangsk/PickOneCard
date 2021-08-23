//
//  TarotScene.swift
//  PickOneCard
//
//  Created by Sophie Kim on 2021/08/14.
//

import Foundation
import SpriteKit
import UIKit

class TarotScene: SKScene {
    override func didMove(to view: SKView) {
        let bg = SKSpriteNode(imageNamed: "bg_blank")
        bg.anchorPoint = CGPoint.zero
        bg.position = CGPoint.zero
        addChild(bg)
        
        let fool = CardImageManager(cardName: .fool)
        fool.position = CGPoint(x:500, y:400)
        addChild(fool)
    }
}
