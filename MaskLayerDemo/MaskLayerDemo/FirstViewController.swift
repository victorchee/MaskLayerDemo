//
//  FirstViewController.swift
//  MaskLayerDemo
//
//  Created by qihaijun on 2/19/16.
//  Copyright © 2016 VictorChee. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    @IBOutlet weak var button: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let path = UIBezierPath(roundedRect: button.bounds, byRoundingCorners: [UIRectCorner.BottomLeft, .TopRight], cornerRadii: CGSize(width: 50, height: 0))
        let maskLayer = CAShapeLayer()
        maskLayer.path = path.CGPath
        button.layer.mask = maskLayer
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

