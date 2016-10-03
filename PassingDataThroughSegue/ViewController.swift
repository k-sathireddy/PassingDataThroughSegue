//
//  ViewController.swift
//  PassingDataThroughSegue


import UIKit



class ViewController: UIViewController{
    
    @IBOutlet weak var dataTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "senddata" {
            let Mainview = segue.destination as! ViewController2
            if dataTextField.text != nil
            {
                Mainview.dataText = (dataTextField.text)!
            }
            
        }
    }
    
}

