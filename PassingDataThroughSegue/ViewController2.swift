//
//  ViewController2.swift
//  PassingDataThroughSegue

import UIKit


class ViewController2: UIViewController {
    
    @IBOutlet weak var dataLabel: UILabel!
    
    var dataText: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        dataLabel.text = dataText
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
