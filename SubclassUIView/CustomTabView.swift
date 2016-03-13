//
//  SampleView.swift
//  SubclassUIView
//
//  Created by Yoshizumi Ashikawa on 2016/03/11.
//  Copyright © 2016年 Yoshizumi Ashikawa. All rights reserved.
//

import Foundation
import UIKit

class CustomTabView: UIView {

  @IBOutlet var contentView: UIView!

  override init(frame: CGRect) {
		super.init(frame: frame)

    NSBundle.mainBundle().loadNibNamed("CustomTabView", owner: self, options: nil)
		contentView.frame = frame
    addSubview(contentView)

  }

  required init?(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
  }
  
}