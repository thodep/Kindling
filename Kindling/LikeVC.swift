//
//  LikeVC.swift
//  Kindling
//
//  Created by tho dang on 2015-08-28.
//  Copyright (c) 2015 Tho Dang. All rights reserved.
//

import UIKit

class LikeVC: UIViewController {

    @IBAction func gobacktoMainVC(sender: AnyObject) {
        performSegueWithIdentifier( "unwind", sender: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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

}
