//
//  DetailView.swift
//  Notes WatchKit Extension
//
//  Created by Felipe Brigagão de Almeida on 09/06/22.
//

import SwiftUI

struct DetailView: View {
    // MARK: - PROPERTIES
    @State private var isCreditsPresented: Bool = false
    let note: Note
    let count: Int
    let index: Int
    
    // MARK: - BODY
    var body: some View {
        VStack(alignment: .center, spacing: 3) {
            // HEADER
            HeaderView(title: "")
            
            // CONTENT
            Spacer()
            
            ScrollView(.vertical) {
                Text(note.text)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
            }
            
            Spacer()
            
            // FOOTER
            HStack(alignment: .center) {
                Image(systemName: "gear")
                    .imageScale(.large)
                
                Spacer()
                
                Text("\(count) / \(index + 1)")
                
                Spacer()
                
                Image(systemName: "info.circle")
                    .imageScale(.large)
                    .onTapGesture {
                        isCreditsPresented.toggle()
                    }
                    .sheet(isPresented: $isCreditsPresented) {
                        CreditsView()
                    }
            } //: HSTACK
            .foregroundColor(.secondary)
        } //: VSTACK
        .padding(3)
    }
}

// MARK: - PREVIEW
struct DetailView_Previews: PreviewProvider {
    static var sampleData: Note = Note(id: UUID(), text: "Hello Notes!")
    
    static var previews: some View {
        DetailView(note: sampleData, count: 5, index: 1)
    }
}
