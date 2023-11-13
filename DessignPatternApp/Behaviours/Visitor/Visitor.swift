//
//  Visitor.swift
//  DessignPatternApp
//
//  Created by Taras Chernysh on 13.11.2023.
//

import Foundation

struct VisitorPattern {}

// MARK: - DesignPatternHandler

extension VisitorPattern: DesignPatternHandler {
    
    func handlePattern() {
        let poi = POIMarker(name: "Apple hause", latitude: 10, longtitude: 12, status: "Oppened")
        poi.accept(visitor: POIVisitor())
        
        let cluster = ClusterMarker(name: "Shop", latitude: 9, longtitude: 9, amountOfPOI: 12)
        cluster.accept(visitor: ClusterVisitor())
    }
}
