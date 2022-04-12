//
//  ViewController.swift
//  LearnCoreData
//
//  Created by Anna Buzhinskaya on 12.04.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var carModelLabel: UILabel!
    @IBOutlet weak var carManufacturerLabel: UILabel!
    @IBOutlet weak var carOwnerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        coreDataSave()
        loadCarInfo()
    }
    
    private func coreDataSave() {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        let personOne = Human(context: context)
        let bmwX5 = Car(context: context)
        let BMW = Manufacturer(context: context)
        
        personOne.name = "David"
        BMW.name = "BMW"
        bmwX5.model = "X5"
        bmwX5.owner = personOne
        bmwX5.manufacturer = BMW
        appDelegate.saveContext()
    }
    
    private func loadCarInfo() {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        let car = try? context.fetch(Car.fetchRequest()) as! [Car]
                
        self.carModelLabel.text = car?.last?.model
        self.carManufacturerLabel.text = car?.last?.manufacturer?.name
        self.carOwnerLabel.text = car?.last?.owner?.name
    }
}

