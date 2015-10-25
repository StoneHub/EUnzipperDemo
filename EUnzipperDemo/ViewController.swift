//
//  ViewController.swift
//  EUnzipperDemo
//
//  Created by Stone Zhang on 10/25/15.
//  Copyright © 2015 Stone. All rights reserved.
//

import UIKit
import EUnzipper

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let unzipper: EUnzipper
        if let epubURL = NSBundle.mainBundle().URLForResource("A Bend in the River - V.S. Naipaul", withExtension: "epub") {
            unzipper = EUnzipper.createWithURL(epubURL)!
            if let data = unzipper["mimetype"] {
                if let str = NSString(data: data, encoding: NSUTF8StringEncoding) {
                    print(str)
                } else {
                    print("can't init string from data")
                }
            } else {
                print("can not get data")
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

