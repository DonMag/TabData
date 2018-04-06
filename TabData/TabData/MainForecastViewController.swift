//
//  MainForecastViewController.swift
//  TabData
//
//  Created by Don Mag on 4/6/18.
//  Copyright © 2018 DonMag. All rights reserved.
//

import UIKit

class MainForecastViewController: UIViewController {
	
	@IBOutlet var latResult: UILabel!
	@IBOutlet var lonResult: UILabel!
	
	var latPassed: Double?
	var lonPassed: Double?

	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		
		latResult.text = "\(latPassed ?? 0.0)"
		lonResult.text = "\(lonPassed ?? 0.0)"

	}
	
}
