//
//  SOLIDAvoidable.swift
//  DessignPatternApp
//
//  Created by Taras Chernysh on 13.11.2023.
//

import Foundation

protocol File {}
extension File {
    func printTypeOfFile() {
        print("self: \(self)")
    }
}
struct DOC: File {}
struct PDF: File {}

/// ***** 1 ****
/// avoid using Interface segregation
protocol SOLIDInterfaceSegregationAvoidable {
    associatedtype ReadableFile: File
    func read(file: ReadableFile)
}

struct SADocReader: SOLIDInterfaceSegregationAvoidable {
    func read(file: DOC) {
        file.printTypeOfFile()
    }
}

struct SAPDFReader: SOLIDInterfaceSegregationAvoidable {
    func read(file: PDF) {
        file.printTypeOfFile()
    }
}

/// use Interface segregation

protocol PDFReadable {
    func read(pdf: PDF)
}

protocol DOCReadable {
    func read(doc: DOC)
}

struct PDFReader: PDFReadable {
    func read(pdf: PDF) {
        pdf.printTypeOfFile()
    }
}

struct DOCReader: DOCReadable {
    func read(doc: DOC) {
        doc.printTypeOfFile()
    }
}
