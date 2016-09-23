//
//  InfoViewController.swift
//  Culvert_Analysis_E1
//
//  Created by Kniel,Karl E on 9/12/16.
//  Copyright © 2016 Kniel,Karl E. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController
{
    
    @IBOutlet weak var jobDesc: UITextField!
    @IBOutlet weak var station: UITextField!
    @IBOutlet weak var designBy: UITextField!
    @IBOutlet weak var allowableHW: UITextField!
    @IBOutlet weak var usInv: UITextField!
    @IBOutlet weak var dsInv: UITextField!
    @IBOutlet weak var lengthPipe: UITextField!
    @IBOutlet weak var slope: UITextField!
    @IBOutlet weak var units: UISegmentedControl!
	
    
    @IBAction func computeSlope(_ sender: AnyObject)
    {
        let slopeDub = (Double(usInv.text!)! - Double(dsInv.text!)!) / Double(lengthPipe.text!)!
        
        slope.text = "\(slopeDub)"
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
	
	override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
		self.view.endEditing(true)
	}
	
	func textFieldShouldReturn(textField: UITextField) -> Bool {
		textField.resignFirstResponder()
		return true
	}
	
	
}
