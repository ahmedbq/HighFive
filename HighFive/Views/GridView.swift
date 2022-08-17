//
//  GridView.swift
//  HighFive
//
//  Created by Ahmed Bukhtair Qureshi on 8/16/22.
//

import UIKit

class GridView: UIView {
    init(position: CGPoint, dimension: Int, tilePadding: CGFloat, tileWidth: CGFloat) {
        let parentWidth = CGFloat(dimension) * (tileWidth + tilePadding)
        // TODO: Or tilePadding * 2?
        
        super.init(frame: CGRect(x: position.x, y: position.y, width: parentWidth, height: parentWidth))
        var xCursor: CGFloat = tilePadding
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

