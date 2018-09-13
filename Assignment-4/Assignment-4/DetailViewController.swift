//
//  DetailViewController.swift
//  Assignment-4
//
//  Created by jody moore on 9/13/18.
//  Copyright © 2018 Rock Valley College. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var WebSite: UIWebView!
    @IBOutlet weak var detailDescriptionLabel: UILabel!


    func configureView() {
        // Update the user interface for the detail item.
        if detailItem != nil {
            //1) Comment Out Next 3 Lines
            //            if let label = detailDescriptionLabel {
            //                label.text = detail.description
            //            }
            
            //2) Replace code with below
            if let myWebview = WebSite {
                if let url = URL(string: detailItem as! String) {
                    let request = URLRequest(url: url)
                    myWebview.scalesPageToFit = true
                    myWebview.loadRequest(request)
                }
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //3) Chamge to AnyObject?
    var detailItem: AnyObject? {
        didSet {
            // Update the view.
            configureView()
        }
    }
}

