//
//  ViewController.swift
//  TestCocoapods
//
//  Created by Christos Vasilakis on 11/20/14.
//  Copyright (c) 2014 Christos Vasilakis. All rights reserved.
//

import UIKit

import AGURLSessionStubs

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        StubsManager.stubRequestsPassingTest({ (request: NSURLRequest!) -> Bool in
            return true
            }, withStubResponse:( { (request: NSURLRequest!) -> StubResponse in
                return StubResponse(data:NSData(), statusCode: 200, headers: ["Content-Type" : "text/json"])
            }))

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

