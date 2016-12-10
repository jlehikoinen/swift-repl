import Foundation
import Glibc

// Swift example
func swift_example() {
    print("\n// Swift example //")

    let myVar = "Cleveland"
    print("Hello \(myVar)!")

    let oneFiveTenArray = [1, 5, 10]
    let timesTwoClosure = {$0 * 2}
    let newArray = oneFiveTenArray.map(timesTwoClosure)
    print("\(oneFiveTenArray) * 2 => \(newArray)")
}

// Objective-C Foundation Framework example
func objc_example() {
    print("\n// Obj-C Foundation Framework example //")

    let date = Date()
    let dateFormatter = DateFormatter()
    dateFormatter.locale = Locale(identifier: "fi_FI")
    dateFormatter.dateStyle = .full
    let localizedDate = dateFormatter.string(from: date)
    print("Localized date: \(localizedDate)")
}

// GNU C Library example
func glibc_example() {
    print("\n// GNU C Library example //")

    let randNumber = random()
    print("Random number: \(randNumber)")
    print("")
}

swift_example()
objc_example()
glibc_example()
