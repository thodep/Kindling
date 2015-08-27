//
//  LayerOfView.swift
//  Kindling
//
//  Created by tho dang on 2015-08-24.
//  Copyright (c) 2015 Tho Dang. All rights reserved.
//

import UIKit

class LayerOfView: UIImageView {
    
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
            layer.masksToBounds = cornerRadius > 0
        }
    }
    @IBInspectable var borderWidth: CGFloat = 0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    @IBInspectable var borderColor: UIColor? {
        didSet {
            layer.borderColor = borderColor?.CGColor
        }
        
    }

}
