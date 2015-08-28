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
        
        case NoSelection      // 0
        case LikeSelection    // 1
        case DislikeSelection // 2
        
    }
    var currentState = SelectionState.NoSelection
   
    
    override func viewDidLoad() {
        
      
        super.viewDidLoad()
        print(currentState.hashValue)
        
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
            //println("eND")
            //add an animation to the .Ended call block which animates the view back to a  centred position once the dragging event ends
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
            // If user drag the card to the left
            if transV.x < 0{
            println("dislike")
            currentState = SelectionState.DislikeSelection
            print(currentState.hashValue)
              
            // If user drag the card to the right
            } else if transV.x > 0 {
             println("like")
            currentState = SelectionState.LikeSelection
            print(currentState.hashValue)
             // if no one touch the card 
            } else {
            println("card stays at the center")
                
            }
            
            print(currentState.hashValue)
            
        case UIGestureRecognizerState.Failed:
            println("OPPS ERROR")
            
        default:
            print("Default callback triggered")
            
        }

    }
    

}
