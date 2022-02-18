//
//  ViewModel.swift
//  AnalysisTxt
//
//  Created by Hamza on 2/16/22.
//  Copyright © 2022 Hamza. All rights reserved.
//

import Foundation


class ViewModel {
    public private (set) var textData: String
    
    lazy public private (set) var sentiment: Sentiment = {
        let prediction = try? AnalysisTxtModel().prediction(text: textData)
        guard let label = prediction?.label else { return Sentiment(text: "Error! Could not analyze sentence")}
        let emojiResponse = emoji(label: label)
        return Sentiment(text: emojiResponse)
    }()
    
    init(textData: String) {
        self.textData = textData
    }
    
    func emoji(label: String) -> String {
        switch label {
        case "Kindness":
            return "Kind 🤩"
        case "encouragement":
            return "Encouraging 😃"
        case "mean":
            return "Mean 😡"
        case "Neutral":
            return "Neutral 😁 "
        default:
            return "Unknown 🤨"
        }
    }
    
}
