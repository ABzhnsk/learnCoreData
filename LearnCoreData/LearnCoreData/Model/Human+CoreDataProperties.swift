//
//  Human+CoreDataProperties.swift
//  LearnCoreData
//
//  Created by Anna Buzhinskaya on 12.04.2022.
//
//

import Foundation
import CoreData


extension Human {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Human> {
        return NSFetchRequest<Human>(entityName: "Human")
    }

    @NSManaged public var name: String?
    @NSManaged public var gender: Bool
    @NSManaged public var birthday: Date?
    @NSManaged public var car: NSSet?

}

// MARK: Generated accessors for car
extension Human {

    @objc(addCarObject:)
    @NSManaged public func addToCar(_ value: Car)

    @objc(removeCarObject:)
    @NSManaged public func removeFromCar(_ value: Car)

    @objc(addCar:)
    @NSManaged public func addToCar(_ values: NSSet)

    @objc(removeCar:)
    @NSManaged public func removeFromCar(_ values: NSSet)

}

extension Human : Identifiable {

}
