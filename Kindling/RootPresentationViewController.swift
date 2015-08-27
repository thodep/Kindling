//
//  RootPresentationViewController.swift
//  Kindling
//
//  Created by tho dang on 2015-08-24.
//  Copyright (c) 2015 Tho Dang. All rights reserved.
//

import UIKit

class RootPresentationViewController: UIViewController {
    
    @IBOutlet weak var horizontalContraint: NSLayoutConstraint!
    @IBOutlet weak var cardContainer: UIView!
    @IBOutlet weak var cardTopLayoutConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        
      
        super.viewDidLoad()
        
        //Adding Selection States
        enum SelectionState {
        
        case NoSelection
        case LikeSelection
        case DislikeSelection
        
        }
        var currentState = SelectionState.NoSelection
        print("\(currentState )")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func handlePan(sender: UIPanGestureRecognizer) {
        switch sender.state {
        case UIGestureRecognizerState.Began:
            println("began")
          
        case UIGestureRecognizerState.Ended:
            println("eND")
            horizontalContraint.constant = 0.0
            cardContainer.layoutIfNeeded()
            
        case UIGestureRecognizerState.Changed:
            let translation = sender.translationInView(self.cardContainer)
//            var curveOffset:CGFloat = cos(translation.x / (0.5 * self.view.bounds.width))
//            println("The current curve offest = \(curveOffset)")
//            cardTopLayoutConstraint.constant = (-curveOffset * 30)
            horizontalContraint.constant =  -translation.x
            cardContainer.layoutIfNeeded()

        case UIGestureRecognizerState.Failed:
            println("OPPS ERROR")
            
        default:
            print("Default callback triggered")
            

            
        }

    }
    

}
