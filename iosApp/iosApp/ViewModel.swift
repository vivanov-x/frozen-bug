import Foundation
import shared

class ViewModel {
    
    func initialize() {
        let fooInstanceCreatedFromSwift = Foo(
            field: "fromSwift",
            barsList: [Bar(field: "bar1swift"), Bar(field: "bar1swift")
        ])
        
        let processor = Processor()
        processor.execute(foo: fooInstanceCreatedFromSwift)
//        processor.executeWithWorkaround(foo: fooInstanceCreatedFromSwift)
    }
    
    
}
