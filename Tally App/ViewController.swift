//
//  ViewController.swift
//  Tally App
//
//  Created by Gwen Thelin on 9/30/24.
//

import UIKit

class ViewController: UIViewController {
	@IBOutlet weak var tallyNumber: UILabel!
	@IBOutlet weak var textField: UITextField!
	@IBOutlet weak var intervalTextField: UITextField!
	
	var interval: Int = 1
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
	}
	
	func getTallyNumber() -> Int {
		Int(tallyNumber.text!) ?? 0
	}

	
	@IBAction func selectButtonTapped(_ sender: UIButton) {
		if textField.hasText {
			tallyNumber.text = textField.text
			textField.text = ""
		}
		
		if intervalTextField.hasText {
			interval = Int(intervalTextField.text!) ?? 1
			intervalTextField.text = ""
		}
	}
	
	@IBAction func onPlusTapped(_ sender: Any) {
		tallyNumber.text = String(getTallyNumber() + (interval))
	}
	
	@IBAction func onMinusTapped(_ sender: Any) {
		tallyNumber.text = String(getTallyNumber() - interval)
	}
	
}

