//
//  ViewController.swift
//  HighFive
//
//  Created by Ahmed Bukhtair Qureshi on 8/16/22.
//

import UIKit

class ViewController: UIViewController {
    let dimension: Int = 6
    let tilePadding: CGFloat = 4

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        // Adding subview in this lifecycle to wait for bounds to be set first
                
        // First take the number of tiles and multiply by tile padding to calculate the space in-between the tiles.
        // Then take the width bound and subtract it by this product.
        // Divide the remaining result by the number of tiles to get the tileWidth.
        let spaceBetweenTiles = CGFloat(self.dimension) * self.tilePadding
        let tileWidth = (view.bounds.width - spaceBetweenTiles) / CGFloat(dimension)
        
        let gridView = GridView(position: CGPoint(x: 0, y: 0), dimension: self.dimension, tilePadding: self.tilePadding, tileWidth: tileWidth)
        
        gridView.layer.position.y += view.safeAreaInsets.top
        gridView.layer.position.x = view.center.x
        
        view.addSubview(gridView)
    }


}

