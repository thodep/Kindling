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
    

    
//        let translation = sender.translationInView(self.view)
//        if let view = sender.view {
//        view.center = CGPoint(x:view.center.x + translation.x,
//                              y:view.center.y + translation.y)
//        }
//        
//        sender.setTranslation(CGPointZero, inView: self.view)
//        print("Let ")
//        
//        // Do we need these codes??
//        var transV = sender.translationInView(view)
//        print("All is well. X: \(transV)")
//        
//        // Set UIGesture States
//        if sender.state == UIGestureRecognizerState.Began {
//        print("began")
//        }
//        else if sender.state == UIGestureRecognizerState.Ended {
//        // Move the Card View back to the center when user stop panning
//        view.center = CGPoint(x: self.view.bounds.width / 2,
//                              y: self.view.bounds.height / 2)
//        print("ended")
//          
//        } else {
//        print(" user stopped panning")
//        }

           
    
}
