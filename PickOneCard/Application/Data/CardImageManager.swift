//
//  CardImageManager.swift
//  PickOneCard
//
//  Created by Sophie Kim on 2021/08/14.
//

import Foundation
import UIKit
import SpriteKit
import Kingfisher

enum CardName : Int{
    case fool
}

class CardImageManager : SKSpriteNode {
    let cardName : CardName
    let frontTexture : SKTexture
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(cardName : CardName) {
        self.cardName = cardName
        
        switch cardName {
        case .fool:
            frontTexture = SKTexture(imageNamed: "ar01")
        super.init(texture: frontTexture, color: .clear, size: frontTexture.size())
        }
    }
}
