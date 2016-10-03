//
//  ViewController.swift
//  PassingDataThroughSegue


import UIKit



class ViewController: UIViewController, SecondViewControllerProtocol{
    @IBOutlet weak var dataLabel: UILabel!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func navigateToSecondViewControllerOnButtonClick(_ sender: AnyObject) {
        
        let  secondVC: ViewController2 = storyboard?.instantiateViewController(withIdentifier: "viewcont2") as! ViewController2
        secondVC.delegate = self
        self.navigationController?.pushViewController(secondVC, animated: true)
    }
    
    func saveData(data: String){
        dataLabel.text = data
    }
    
}

