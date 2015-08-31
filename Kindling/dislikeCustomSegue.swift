//
//  dislikeCustomSegue.swift
//  Kindling
//
//  Created by tho dang on 2015-08-28.
//  Copyright (c) 2015 Tho Dang. All rights reserved.
//

import UIKit

class dislikeCustomSegue: UIStoryboardSegue {
    override func perform() {
        if let source = self.sourceViewController as? UIViewController, destination = self.destinationViewController  as? UIViewController {
            destination.view.frame = source.view.bounds
            source.view.addSubview(destination.view)
            
            destination.view.frame = CGRectMake(destination.view.frame.origin.x + destination.view.frame.width,
                                                destination.view.frame.origin.y ,
                                                destination.view.frame.width,
                                                destination.view.frame.height  )
            
            UIView.animateWithDuration(0.3, animations: { () -> Void in
              destination.view.frame = source.view.bounds
            })
            
            //destination.view.removeFromSuperview()
            source.presentViewController(destination, animated: false, completion: { () -> Void in
                print("presentation finished")
            })
            
        }
    }
}
