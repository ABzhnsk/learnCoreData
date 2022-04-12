//
//  Car+CoreDataProperties.swift
//  LearnCoreData
//
//  Created by Anna Buzhinskaya on 12.04.2022.
//
//

import Foundation
import CoreData


extension Car {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Car> {
        return NSFetchRequest<Car>(entityName: "Car")
    }

    @NSManaged public var model: String?
    @NSManaged public var owner: Human?
    @NSManaged public var manufacturer: Manufacturer?

}

extension Car : Identifiable {

}
