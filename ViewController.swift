//
//  ViewController.swift
//  ScrollViewSampleProject
//
//  Created by Vikash Hart on 5/21/18.
//  Copyright © 2018 Vikash Hart. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Here we instantiate a ScrollViewView.
    private let scrollViewView = ScrollViewView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(scrollViewView)
    }
}

