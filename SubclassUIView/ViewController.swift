//
//  ViewController.swift
//  SubclassUIView
//
//  Created by Yoshizumi Ashikawa on 2016/03/11.
//  Copyright © 2016年 Yoshizumi Ashikawa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()


    let testView = CustomTabView()
    testView.frame = CGRectMake(10, 10, 200, 200)
    testView.backgroundColor = UIColor.yellowColor()
		view.addSubview(testView)
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()

  }


}

