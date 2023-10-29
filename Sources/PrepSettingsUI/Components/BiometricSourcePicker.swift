import SwiftUI
import PrepShared

struct BiometricSourcePicker<S: GenericSource>: View {
    
    let sourceBinding: Binding<S>
    
    var body: some View {
        PickerField("Source", sourceBinding)
//        
//        HStack {
//            Text("Source")
//            Spacer()
//            MenuPicker<S>(sourceBinding)
//        }
    }
}
