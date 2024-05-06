//
//  Precriptions.swift
//  HealthTracker
//
//  Created by Matt DiNovo on 4/22/24.
//

import Foundation
import SwiftData

@Model
class Meds {
    var name: String
    var dose: String
    var details: String
    var provider: String
    
    init(name: String, dose: String, details: String, provider: String) {
        self.name = name
        self.dose = dose
        self.details = details
        self.provider = provider
    }
}
