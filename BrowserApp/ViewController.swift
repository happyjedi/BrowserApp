//
//  ViewController.swift
//  BrowserApp
//
//  Created by Tatiana on 05.01.16.
//  Copyright © 2016 HappyJedi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var WebView: UIWebView!
    @IBOutlet weak var ActInd: UIActivityIndicatorView!
    @IBOutlet weak var SearchBar: UISearchBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        SearchBar.text = "http://"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func searchBarSearchButtonClicked(searchbar: UISearchBar) {
        
        searchbar.resignFirstResponder()
        
        let text = SearchBar.text
        let url = NSURL(string: text!)
        let request = NSURLRequest(URL: url!)
        
        WebView.loadRequest(request)
        
    }
    
    func webViewDidStartLoad(_ : UIWebView) {
        
        ActInd.startAnimating()
        
    }
    
    func webViewDidFinishLoad(_ : UIWebView) {
        
        ActInd.stopAnimating()
        
    }

}

