//
//  ViewController.swift
//  AnalysisTxt
//
//  Created by Hamza on 2/15/22.
//  Copyright © 2022 Hamza. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var predictionResult: UILabel!
    @IBOutlet weak var sentenceTxt: UITextField!
    
    var viewModel: ViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sentenceTxt.delegate = self
        sentenceTxt.becomeFirstResponder()
    }


    
    @IBAction func analyzeClicked(_ sender: Any) {
        guard sentenceTxt.text != "" else {
            predictionResult.text = "Please, Enter a sentence !"
            return
        }
        guard let sentence = sentenceTxt?.text else { return }
        viewModel = ViewModel(textData: sentence)
        predictionResult.text = viewModel.sentiment.text
        sentenceTxt.text = ""
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        analyzeClicked(sentenceTxt)
        return true
    }
}

