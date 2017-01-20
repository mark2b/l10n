//
//  ViewController.swift
//  l10n
//
//  Created by Mark Berner on 01/19/2017.
//  Copyright (c) 2017 Mark Berner. All rights reserved.
//

import UIKit
import l10n

class ViewController: UIViewController {
    
    override func viewWillAppear(_ animated: Bool) {
        localeControl.selectedSegmentIndex = 0
        updateMessage()
    }
    
    func updateMessage() {
        print(Locale.current.identifier)
        messageLabel.text = "Hello, World !!!".l10n(l.vc1, locale:supportedLocales[localeControl.selectedSegmentIndex])
    }
    
    let supportedLocales = [Locale(identifier: "en_US"), Locale(identifier: "zh_CN"), Locale(identifier: "he_IL"), Locale(identifier: "ru_RU")]
    
    @IBOutlet weak var localeControl: UISegmentedControl!

    @IBOutlet weak var messageLabel: UILabel!

    @IBAction func onLocaleChangedAction(_ sender: UISegmentedControl) {
        updateMessage()
    }
}
