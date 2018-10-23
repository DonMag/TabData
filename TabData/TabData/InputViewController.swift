//
//  InputViewController.swift
//  TabData
//
//  Created by Don Mag on 4/6/18.
//  Copyright © 2018 DonMag. All rights reserved.
//

import UIKit

class InputViewController: UIViewController {

	@IBOutlet var latitudeTextField: UITextField!
	@IBOutlet var longitudeTextField: UITextField!
	
	@IBAction func gotoMainForecastVC(_ sender: Any) {

		// make sure we're in a UITabBarController
		if let tabVC = self.tabBarController {

			// make sure the TabBarVC has VCs
			if let tabVCControllers = tabVC.viewControllers {

				// make sure the first tab hold a UINavigationController
				if let navVC = tabVCControllers[0] as? UINavigationController {

					// make sure the first VC is an instance of MainForecastViewController
					if let mainVC = navVC.viewControllers[0] as? MainForecastViewController {

						// "pass" the entered values
						if let lat = Double(latitudeTextField.text!) {
							mainVC.latPassed = lat
						}

						if let lng = Double(longitudeTextField.text!) {
							mainVC.lonPassed = lng
						}

						// switch to the first tab
						tabVC.selectedIndex = 0

					}
				}
			}
		}
		
	}
	
}
