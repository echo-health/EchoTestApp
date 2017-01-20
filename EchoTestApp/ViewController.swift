//
//  ViewController.swift
//  EchoTestApp
//
//  Created by Tom on 20/01/2017.
//  Copyright © 2017 Echo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let appDelegate = UIApplication.shared.delegate as? AppDelegate
        
        appDelegate?.counter += Int(arc4random() % 3) + 1
        
        if appDelegate!.counter > 8 {
            
            let viewcontrollers = self.navigationController!.viewControllers
            
            let viewCont = viewcontrollers[viewcontrollers.count]
            
            self.navigationController!.viewControllers = [viewCont]
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

