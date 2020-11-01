//
//  ContentView.swift
//  PersonalCovidTracker
//
//  Created by Hammad Rehman on 2020-10-31.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext
    @State var checkedON = false
    @State var checkedQC = false
    @State var checkedPEI = false
    @State var checkedNB = false
    @State var checkedNS = false
    @State var checkedNL = false
    @State var checkedMB = false
    @State var checkedSK = false
    @State var checkedAB = false
    @State var checkedBC = false
    @State var checkedTerr = false
    
    var body: some View {
        HStack(alignment: .top) {
            Button(action: {
                self.checkedON.toggle()
            })
            {
                HStack {
                    CheckBoxView(checked: $checkedON)
                    Text("ON")
                }
            }
        }
    }

    private func addItem() {

    }

    private func deleteItems(offsets: IndexSet) {

    }
}

private let itemFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .short
    formatter.timeStyle = .medium
    return formatter
}()

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}

struct CheckBoxView: View {
    @Binding var checked : Bool
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 1)
                .frame(width: 10, height: 10)
                .foregroundColor(checked ? Color.green : Color.gray.opacity(0.2))
            if checked {
                Image(systemName: "checkmark")
                    .foregroundColor(Color.white)
            }
        }
    }
}
