//
//  ViewController.swift
//  HighFive
//
//  Created by Ahmed Bukhtair Qureshi on 8/16/22.
//

import UIKit

class ViewController: UIViewController {
    let gridView = GridView(position: CGPoint(x: 0, y: 0), dimension: 5, tilePadding: 3, tileWidth: 60)

    override func viewDidLoad() {
        super.viewDidLoad()
                
        view.addSubview(gridView)

    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()

        gridView.layer.position.y += view.safeAreaInsets.top
        gridView.layer.position.x = view.center.x
        
        // TODO: Maybe try to use bounds to calculate the tile widths
    }


}

