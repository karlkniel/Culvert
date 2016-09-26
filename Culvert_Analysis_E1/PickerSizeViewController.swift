//
//  PickerSizeViewController.swift
//  Culvert_Analysis_E1
//
//  Created by Karl Kniel on 9/25/16.
//  Copyright © 2016 Kniel,Karl E. All rights reserved.
//

import UIKit

class PickerSizeViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate
{
    
    @IBOutlet weak var pipeSizePicker: UIPickerView!
    
    
    var roundRCPData = ["12 in - 300 mm", "15 in - 375 mm", "18 in - 450 mm", "24 in - 600 mm", "30 in - 750 mm", "36 in - 900 mm", "42 in - 1050 mm", "48 in - 1200 mm", "54 in - 1350 mm", "60 in - 1500 mm", "66 in - 1650 mm", "72 in - 1800 mm", "78 in - 1950 mm", "84 in - 2100 mm", "90 in - 2250 mm", "96 in - 2400 mm", "108 in - 2700 mm", "User Set"]
    
    var roundCMPData = ["12 in - 300 mm", "15 in - 375 mm", "18 in - 450 mm", "24 in - 600 mm", "30 in - 750 mm", "36 in - 900 mm", "42 in - 1050 mm", "48 in - 1200 mm", "54 in - 1350 mm", "60 in - 1500 mm", "66 in - 1650 mm", "72 in - 1800 mm", "78 in - 1950 mm", "84 in - 2100 mm", "90 in - 2250 mm", "96 in - 2400 mm", "User Set"]
    
    var ovalERCPData = ["12x18 in - 305x460 mm", "14x23 in - 365x575 mm", "19x30 in - 490x770 mm", "24x38 in - 610x960 mm", "29x45 in - 730x1150 mm", "34x53 in - 855x1345 mm", "38x60 in - 975x1535 mm", "43x68 in - 1095x1730 mm", "48x76 in - 1220x1920 mm", "58x91 in - 1465x2305 mm", "User Set"]
    
    var archCMPData = ["13x17 in - 340x450 mm", "15x21 in - 380x510 mm", "18x24 in - 420x560 mm", "20x28 in - 500x680 mm", "24x35 in - 660x910 mm", "29x42 in - 740x1030 mm", "33x49 in - 820x1150 mm", "38x57 in - 970x1390 mm", "43x64 in - 1120x1630 mm", "47x71 in - 1260x1880 mm", "52x77 in - 1330x1960 mm", "57x83 in - 1400x2130 mm", "User Set"]
    
    var pipeSizePickerData = [""]
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.pipeSizePicker.dataSource = self
        self.pipeSizePicker.delegate = self
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    
    func getPipeType()
    {
        let pT = PickerViewController().getValue()
        if(pT == 0)
        {
            pipeSizePickerData = roundRCPData
        }
        else if(pT == 1)
        {
            pipeSizePickerData = roundCMPData
        }
        else if(pT == 2)
        {
            pipeSizePickerData = ovalERCPData
        }
        else if(pT == 3)
        {
            pipeSizePickerData = ovalERCPData
        }
        else if(pT == 4)
        {
            pipeSizePickerData = archCMPData
        }
        else
        {
            self.view.backgroundColor = UIColor.blue
        }
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int
    {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
        return pipeSizePickerData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
    {
        return pipeSizePickerData[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        
    }
    
}

