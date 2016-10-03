//
//  ViewController2.swift
//  PassingDataThroughSegue

import UIKit


protocol SecondViewControllerProtocol {
    func saveData(data: String) // this function the first controllers
}

class ViewController2: UIViewController {
    
    var delegate: SecondViewControllerProtocol?
    
    @IBOutlet weak var dataTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func saveButtonClicked(_ sender: AnyObject) {
        delegate?.saveData(data: dataTextField.text!)
    }
}
