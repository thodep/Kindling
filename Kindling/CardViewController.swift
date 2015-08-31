//
//  CardViewController.swift
//  Kindling
//
//  Created by tho dang on 2015-08-24.
//  Copyright (c) 2015 Tho Dang. All rights reserved.
//

import UIKit

class CardViewController: UIViewController {

    
    @IBOutlet weak var cardImageView: LayerOfView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cardImageView.layer.cornerRadius = (cardImageView.layer.bounds.size.width +
                                             cardImageView.layer.bounds.height) / 4
        cardImageView.clipsToBounds = true
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
      
    }
    
}
