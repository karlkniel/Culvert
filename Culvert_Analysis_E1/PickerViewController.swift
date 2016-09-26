//
//  PickerViewController.swift
//  Culvert_Analysis_E1
//
//  Created by Karl Kniel on 9/25/16.
//  Copyright © 2016 Kniel,Karl E. All rights reserved.
//

import UIKit

class PickerViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate
{

    @IBOutlet weak var pipeTypePicker: UIPickerView!
    
    var pipeTypePickerData = ["Round RCP", "Round CMP", "Oval ERCP", "Oval Long Axis ERCP", "Arch CMP", "Box Culvert"]
    
    var pipeTypeNum: Int = -1
    var pipeTypeStr: String = "No Type Selected"
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.pipeTypePicker.dataSource = self
        self.pipeTypePicker.delegate = self
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int
    {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
        return pipeTypePickerData.count
    }
    
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
    {
        return pipeTypePickerData[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        pipeTypeNum = row
        pipeTypeStr = pipeTypePickerData[row]
    }
    
    func getName() -> String
    {
        return pipeTypeStr
    }
    
    func getValue() -> Int
    {
        return pipeTypeNum
    }
    
}
