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
    
    enum SelectionState {
        
        case NoSelection
        case LikeSelection
        case DislikeSelection
        
    }
    var currentState = SelectionState.NoSelection
   
    
    override func viewDidLoad() {
        
      
        super.viewDidLoad()
        
        //Adding Selection States
       
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
           
            

            UIView.animateWithDuration(0.3, animations: { () -> Void in
                
                self.horizontalContraint.constant = 0
                self.view.layoutIfNeeded()
                
            }, completion: {
               (complete) -> Void in
                
            })
            
    
        case UIGestureRecognizerState.Changed:
            let translation = sender.translationInView(self.cardContainer)
            horizontalContraint.constant =  -translation.x
            cardContainer.layoutIfNeeded()
            
            
            
            // Checking Card Location
            var transV = sender.translationInView(view)
            print("Card locates at \(transV)")
            
         // When the user drag the card to the left
        // translation.x = SelectionState.DislikeSelection
            
            
            
        case UIGestureRecognizerState.Failed:
            println("OPPS ERROR")
            
        default:
            print("Default callback triggered")
            
        }

    }
    

}
