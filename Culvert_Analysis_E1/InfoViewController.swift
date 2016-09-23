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
    
    @IBOutlet weak var headwallUnits: UILabel!
    @IBOutlet weak var usInvUnits: UILabel!
    @IBOutlet weak var dsInvUnits: UILabel!
    @IBOutlet weak var lengthPipeUnits: UILabel!
    @IBOutlet weak var slopeUnits: UILabel!
    @IBOutlet weak var unitChoice: UISegmentedControl!
    
    @IBAction func unitChange(_ sender: AnyObject)
    {
        switch unitChoice.selectedSegmentIndex
        {
        case 0:
            headwallUnits.text = "ft"
            usInvUnits.text = "ft"
            dsInvUnits.text = "ft"
            lengthPipeUnits.text = "ft"
            slopeUnits.text = "ft"
            
        case 1:
            headwallUnits.text = "m"
            usInvUnits.text = "m"
            dsInvUnits.text = "m"
            lengthPipeUnits.text = "m"
            slopeUnits.text = "m"
            
        default:
            
            break;
            
        }
    }
    
	
    
    @IBAction func computeSlope(_ sender: AnyObject)
    {
        print (lengthPipe.text)
        if (!(lengthPipe.text?.isEmpty)!) && (lengthPipe.text! != "0")
        {
            let slopeDub = (Double(usInv.text!)! - Double(dsInv.text!)!) / Double(lengthPipe.text!)!
            
            slope.text = "\(slopeDub)"
        }
        
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
