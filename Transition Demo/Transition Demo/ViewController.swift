//
//  ViewController.swift
//  Transition Demo
//
//  Created by Ankit Jaiswal on 19/01/19.
//  Copyright © 2019 Ankit Jaiswal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    var isButtonSelect = false

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func switchViewsButtonAction(_ sender: UIButton) {
        isButtonSelect = !isButtonSelect
        let fromView = isButtonSelect ? view1 : view2
        let toView = isButtonSelect ? view2 : view1
        //showHideTransitionViews this will not remove the views
        //it always do animation on superview
        UIView.transition(from: fromView!, to: toView!, duration: 1.0, options: [.showHideTransitionViews, .transitionFlipFromLeft]) { (_) in
            
        }
    }

}

