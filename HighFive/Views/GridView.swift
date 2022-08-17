//
//  GridView.swift
//  HighFive
//
//  Created by Ahmed Bukhtair Qureshi on 8/16/22.
//

import UIKit

class GridView: UIView {
    var tilePadding: CGFloat
    var tileWidth: CGFloat
    var dimension: Int
    var position: CGPoint
    
    init(position: CGPoint, dimension: Int, tilePadding: CGFloat, tileWidth: CGFloat) {
        self.tilePadding = tilePadding
        self.tileWidth = tileWidth
        self.dimension = dimension
        self.position = position
        
        let parentWidth = (CGFloat(dimension) * tileWidth) + (CGFloat(dimension) * tilePadding)
        
        super.init(frame: CGRect(x: position.x, y: position.y, width: parentWidth, height: parentWidth))
        var xCursor: CGFloat = tilePadding / 2 // Tile Padding of 4 (for e.g.) is actually 2 on each side.
        var yCursor: CGFloat

        for _ in 0..<dimension {
            yCursor = tilePadding
            for _ in 0..<dimension {
                let background = UIView(frame: CGRect(x: xCursor, y: yCursor, width: tileWidth, height: tileWidth))
                background.layer.cornerRadius = 0
                background.backgroundColor = .systemOrange
                background.layer.borderWidth = 3
                background.layer.borderColor = .init(red: 1, green: 1, blue: 1, alpha: 1)
                addSubview(background)
                yCursor += tilePadding + tileWidth
            }
            xCursor += tilePadding + tileWidth
        }

    }
    
    required init(coder: NSCoder) {
        fatalError("NSCoding not supported")
    }
}

