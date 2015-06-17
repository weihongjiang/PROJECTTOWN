//
//  JALeftViewController.swift
//  Town
//
//  Created by john.wei on 15/6/8.
//  Copyright (c) 2015年 whj. All rights reserved.
//

import UIKit

class JALeftViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        var bgImageView = UIImageView(frame: self.view.bounds)
        bgImageView.image = UIImage(named: "beijing.jpg")
        self.view.addSubview(bgImageView)
        
        var blur = UIBlurEffect(style: UIBlurEffectStyle.Light)
        var effectImageView = UIVisualEffectView(effect: blur)
        effectImageView.frame  = bgImageView.bounds
        bgImageView.addSubview(effectImageView)
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
