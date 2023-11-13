//
//  Model+Visitor.swift
//  DessignPatternApp
//
//  Created by Taras Chernysh on 13.11.2023.
//

import Foundation

protocol POIVisitorable {
    func visit(poi: POIMarker)
}

protocol ClusterVisitorable {
    func visit(cluster: ClusterMarker)
}

protocol ClusterComponentable {
    func accept(visitor: ClusterVisitorable)
}

protocol POIComponentable {
    func accept(visitor: POIVisitorable)
}


// MARK: - Implementation

struct ClusterVisitor: ClusterVisitorable {
    func visit(cluster: ClusterMarker) {
        print("cluster name: \(cluster.name) and amount of POI: \(cluster.amountOfPOI)")
    }
}

struct POIVisitor: POIVisitorable {
    func visit(poi: POIMarker) {
        print("poi name: \(poi.name) and status: \(poi.status)")
    }
}

struct POIMarker: POIComponentable {
  
    var name: String
    var latitude: Double
    var longtitude: Double
    var status: String
    
    func accept(visitor: POIVisitorable) {
        visitor.visit(poi: self)
    }
}

struct ClusterMarker: ClusterComponentable {
    
    var name: String
    var latitude: Double
    var longtitude: Double
    var amountOfPOI: Int
    
    func accept(visitor: ClusterVisitorable) {
        visitor.visit(cluster: self)
    }
}
