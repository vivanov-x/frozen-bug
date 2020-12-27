This project shows the probable bug in freeze() method.
By documentation this method should freeze object itself and its subgraph.
I found that if I call freeze() on objects that were created on Kotlin code - it freezes everything
But if freeze() method was being called on objects that was initialized from Swift code it 
only freezes object itself but not its subgraph

To see that behavior you can run iosTest.kt and then run iOS app.
As you can see it fails, because of the code inside ViewModel.swift

https://youtrack.jetbrains.com/issue/KT-44108