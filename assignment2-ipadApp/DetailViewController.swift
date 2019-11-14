//
//  DetailViewController.swift
//  assignment2-ipadApp
//
//  Created by Shan Indrakumar on 2019-11-12.
//  Copyright © 2019 CS2680. All rights reserved.
//

import UIKit
import WebKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailDescriptionLabel: UILabel!
    @IBOutlet weak var webView: WKWebView!
    
    func configureView() {
        // Update the user interface for the detail item.
        if let detail = detailItem {
            if let label = detailDescriptionLabel {
                label.text = detail.url
                if let url=URL(string: detail.url){
                    let request = URLRequest(url: url)
                    webView.load(request)
                }
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configureView()
    }

    var detailItem: Movie? {
        didSet {
            // Update the view.
            configureView()
        }
    }


}

