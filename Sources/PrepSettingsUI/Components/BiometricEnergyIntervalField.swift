import SwiftUI
import PrepShared
import PrepSettings

struct BiometricEnergyIntervalField: View {
    
    let type: HealthIntervalType
    @Binding var value: Int
    @Binding var period: HealthPeriod
    
    @ViewBuilder
    var body: some View {
        if type == .average {
            HStack {
                Spacer()
                Text("of the past")
                Stepper("", value: $value, in: period.range)
                    .fixedSize()
                Text("\(value)")
                    .font(.system(.body, design: .monospaced, weight: .bold))
                    .contentTransition(.numericText(value: Double(value)))
                    .foregroundStyle(.secondary)
                MenuPicker<HealthPeriod>($period)
            }
        }
    }
}
