//
//  EditMedicineView.swift
//  HealthTracker
//
//  Created by Matt DiNovo on 4/22/24.
//

import SwiftUI

struct EditMedsView: View {
    
   @Bindable var meds: Meds
    
    var body: some View {
        Form {
            Section {
                TextField("Precription Name", text: $meds.name)
                    .textContentType(.name)
                
                TextField("Dose", text: $meds.dose)
                    .textContentType(.name)
                
                TextField("Provider", text: $meds.provider)
                    .textContentType(.name)
               
            }
            
            Section("Details") {
                TextField("Details about Precription", text: $meds.details, axis: .vertical)
                
            }
        }
        .navigationTitle("Precription")
        .navigationBarTitleDisplayMode(.inline)
    }
}

//#Preview {
//    EditPrecriptionView()
//}
