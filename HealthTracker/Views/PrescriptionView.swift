//
//  ContentView.swift
//  HealthTracker
//
//  Created by Matt DiNovo on 4/22/24.
//

import SwiftUI
import SwiftData


struct PrescriptionView: View {
    @Environment (\.modelContext) var modelContext
    @State private var path = [Meds]()
    @Query var med: [Meds]
    
    var body: some View {
        NavigationStack(path: $path) {
            List {
                ForEach(med) { meds in
                    NavigationLink(value: meds) {
                        Text(meds.name)
                        Text(meds.dose)
                    }
                    
                }
                .onDelete(perform: deleteMed)
                
               
            }
            .navigationTitle("Precriptions")
            .navigationDestination(for:
                Meds.self) {Meds in
               EditMedsView(meds: Meds)
                
            }
                .toolbar {
                    Button("Add Medicine", systemImage: "plus", action: addMed)
                }
            
        }
    }
    
    func addMed() {
        let meds = Meds(name: "", dose: "", details: "", provider: "")
        modelContext.insert(meds)
        path.append(meds)
    }
    
    func deleteMed(at offset: IndexSet) {
        for offset in offset {
            let med = med[offset]
            modelContext.delete(med)
        }
    }
    
}

#Preview {
    PrescriptionView()
}
