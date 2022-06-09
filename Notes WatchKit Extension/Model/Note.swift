//
//  Note.swift
//  Notes WatchKit Extension
//
//  Created by Felipe Brigagão de Almeida on 09/06/22.
//

import Foundation

struct Note: Identifiable, Codable {
    let id: UUID
    let text: String
}
