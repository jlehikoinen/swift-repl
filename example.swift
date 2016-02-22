import Foundation
import Glibc

// Swift example
print("\n// Swift example //")

let myVar = "Cleveland"
print("Hello \(myVar)!")

let oneFiveTenArray = [1, 5, 10]
let timesTwoClosure = {$0 * 2}
let newArray = oneFiveTenArray.map(timesTwoClosure)
print("\(oneFiveTenArray) * 2 => \(newArray)")

// Objective-C Foundation Framework example
print("\n// Obj-C Foundation Framework example //")

let date = NSDate()
let dateFormatter = NSDateFormatter()
dateFormatter.locale = NSLocale(localeIdentifier: "fi_FI")
dateFormatter.dateStyle = .FullStyle
let localizedDate = dateFormatter.stringFromDate(date)
print("Localized date: \(localizedDate)")

// GNU C Library example
print("\n// GNU C Library example //")

let randNumber = random()
print("Random number: \(randNumber)")
print("")
