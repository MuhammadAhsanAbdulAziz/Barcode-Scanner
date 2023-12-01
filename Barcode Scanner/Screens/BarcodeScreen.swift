//
//  BarcodeScreen.swift
//  Barcode Scanner
//
//  Created by Macbook Pro on 01/12/2023.
//

import SwiftUI

struct BarcodeScreen: View {
    
    @State var ScannedBarcode = ""
    
    var body: some View {
        NavigationStack{
            VStack{
                ScannerView(ScannedCode: $ScannedBarcode)
                    .frame(height:300)
                
                Spacer().frame(height:60)
                
                Label("Scanned Barcode", systemImage: "barcode.viewfinder")
                    .font(.system(size: 25))
                
                Text(ScannedBarcode.isEmpty ? "Not Yet Scanned" : ScannedBarcode )
                    .foregroundStyle(ScannedBarcode.isEmpty ? .red : .green)
                    .font(.system(size: 30))
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .padding()
            }
            .navigationTitle("Barcode Scanner")
        }
    }
}

#Preview {
    BarcodeScreen()
}
