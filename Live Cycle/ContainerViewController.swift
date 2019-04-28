//
//  ContainerViewController.swift
//  Live Cycle
//
//  Created by Ruslan Safin on 28/04/2019.
//  Copyright © 2019 Ruslan Safin. All rights reserved.
//

import UIKit

class ContainerViewController: UIViewController {
    
    static var lineCounter = 0
    
    @IBOutlet var textView: UITextView!
    
    func update(caller: String) {
        ContainerViewController.lineCounter += 1
        
        guard let text = textView.text else { return (textView.text = "\(caller)") }
        textView.text = "\(text)\n \(caller)"
        
        let y = textView.contentSize.height - textView.bounds.size.height
        
        guard 0 < y else { return }
        textView.setContentOffset(CGPoint(x: 0, y: y), animated: true)
    }
}
