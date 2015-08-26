//
//  CardViewController.swift
//  Kindling
//
//  Created by tho dang on 2015-08-24.
//  Copyright (c) 2015 Tho Dang. All rights reserved.
//

import UIKit

class CardViewController: UIViewController {

   // @IBOutlet weak var cardImageView: LayerOfView!
    
    @IBOutlet weak var cardImageView: LayerOfView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cardImageView.layer.cornerRadius = (cardImageView.layer.bounds.size.width + cardImageView.layer.bounds.height) / 4
        cardImageView.clipsToBounds = true
        // Do any additional setup after loading the view.
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
      
    }
    
    @IBAction func didPan(sender: UIPanGestureRecognizer) {
    
        let translation = sender.translationInView(self.view)
        if let view = sender.view {
            view.center = CGPoint(x:view.center.x + translation.x,
                y:view.center.y + translation.y)
        }
        sender.setTranslation(CGPointZero, inView: self.view)
        print("Let ")
        
        
        // Set UIGesture States
        if sender.state == UIGestureRecognizerState.Began {
        print("began")
        }
        else if sender.state == UIGestureRecognizerState.Ended {
        print("ended")
        } else {
            print(" user stopped panning")
        }
        
        
        // interesting case of using Switch
//        switch sender.state {
//        case UIGestureRecognizerState.Began:
//            print("start")
//        case UIGestureRecognizerState.Ended:
//            print("ended")
//        default:
//            print("nothing")
//        }
    }
    
 
}
