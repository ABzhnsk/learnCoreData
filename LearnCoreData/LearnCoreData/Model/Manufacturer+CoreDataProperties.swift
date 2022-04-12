//
//  Manufacturer+CoreDataProperties.swift
//  LearnCoreData
//
//  Created by Anna Buzhinskaya on 12.04.2022.
//
//

import Foundation
import CoreData


extension Manufacturer {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Manufacturer> {
        return NSFetchRequest<Manufacturer>(entityName: "Manufacturer")
    }

    @NSManaged public var name: String?

}

extension Manufacturer : Identifiable {

}
