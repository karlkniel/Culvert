//
//  FlowViewController.swift
//  Culvert_Analysis_E1
//
//  Created by Karl Kniel on 9/25/16.
//  Copyright © 2016 Kniel,Karl E. All rights reserved.
//

import UIKit

class FlowViewController: UIViewController
{

    @IBOutlet weak var flow: UITextField!
    @IBOutlet weak var tailwater: UITextField!
    @IBOutlet weak var pipeType: UITextField!
    @IBOutlet weak var pipeSize: UITextField!
    @IBOutlet weak var nValue: UITextField!
    
    let pipeTypeName: String = PickerViewController().getName()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    
//    @IBAction func pipeSelected(_ sender: AnyObject)
//    {
//        if(pipeTypeName == "Round RCP")
//        {
//            pipeType.text = pipeTypeName
//        }else if(pipeTypeName == "Round CMP")
//        {
//            pipeType.text = pipeTypeName
//        }else if(pipeTypeName == "Oval ERCP")
//        {
//            pipeType.text = pipeTypeName
//        }else if(pipeTypeName == "Oval Long Axis ERCP")
//        {
//            pipeType.text = pipeTypeName
//        }else if(pipeTypeName == "Arch CMP")
//        {
//            pipeType.text = pipeTypeName
//        }else
//        {
//            pipeType.text = pipeTypeName
//        }
//    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool
    {
        textField.resignFirstResponder()
        return true
    }

}
