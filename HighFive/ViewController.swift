//
//  ViewController.swift
//  HighFive
//
//  Created by Ahmed Bukhtair Qureshi on 8/16/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // TODO: Make screen compatible with most iphone sizes somehow
        // TODO: Maybe try to use bounds to calculate the width 
        
        let gridView = GridView(position: CGPoint(x: 0, y: 0), dimension: 5, tilePadding: 3, tileWidth: 60)
        view.addSubview(gridView)

        gridView.center.x = view.convert(view.center, from: view.superview).x
        gridView.center.y = 300
    }


}

