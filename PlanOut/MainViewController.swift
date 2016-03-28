//
//  MainViewController.swift
//  PlanOut
//
//  Created by Hakan Tunc on 3/11/16.
//  Copyright © 2016 Software. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, UIPickerViewDelegate {

    @IBOutlet weak var initialTime: UILabel!
    @IBOutlet weak var durationPicker: UIPickerView!

    var durationValues = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        let dateFormatter = NSDateFormatter()
        dateFormatter.timeStyle = .ShortStyle
        initialTime.text = dateFormatter.stringFromDate(NSDate())
        for i in 1...36 {
            durationValues.append(String(i * 5))
        }
        durationPicker.delegate = self
    }

    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return durationValues.count
    }

    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return durationValues[row]
    }

}
