//
//  CoreDataManager.swift
//  EventsApp
//
//  Created by braindamage on 2022/2/28.
//

import Foundation
import CoreData
import UIKit

final class CoreDataManager {
    lazy var persistentContainer: NSPersistentContainer = {
        let persistentContainer = NSPersistentContainer.init(name: "EventsApp")
        persistentContainer.loadPersistentStores { _, error in
            if let error = error {
                print(error.localizedDescription)
            }
        }
        return persistentContainer
    }()
    
    var context: NSManagedObjectContext {
        persistentContainer.viewContext
    }
    
    func saveEvent(name: String, date: Date, image: UIImage) {
        let event = Event(context: context)
        event.setValue(name, forKey: "name")
        let imageData = image.pngData()
        event.setValue(imageData, forKey: "image")
        event.setValue(date, forKey: "date")
        do {
            try context.save()
        } catch {
            //TODO: Error Handle
            print(error.localizedDescription)
        }
    }
    
    func fetchEvents() -> [Event] {
        do {
            let fetchRequest = NSFetchRequest<Event>(entityName: "Event")
            let events = try context.fetch(fetchRequest)
            return events
        } catch {
            //TODO: Error Handle
            print(error.localizedDescription)
            return []
        }
    }
}
