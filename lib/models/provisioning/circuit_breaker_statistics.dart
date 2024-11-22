// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../non_linkable.dart';
import './circuit_breaker_state.dart';

/// auto generated
class CircuitBreakerStatistics extends NonLinkable implements Parsable {
    ///  The numberOfFailedCalls property
    int? numberOfFailedCalls;
    ///  The numberOfNotPermittedCalls property
    int? numberOfNotPermittedCalls;
    ///  The numberOfSuccessfulCalls property
    int? numberOfSuccessfulCalls;
    ///  The state property
    CircuitBreakerState? state;
    /// Instantiates a new [CircuitBreakerStatistics] and sets the default values.
    CircuitBreakerStatistics() : super() {
        type_ = 'provisioning.CircuitBreakerStatistics';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static CircuitBreakerStatistics createFromDiscriminatorValue(ParseNode parseNode) {
        return CircuitBreakerStatistics();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['numberOfFailedCalls'] = (node) => numberOfFailedCalls = node.getIntValue();
        deserializerMap['numberOfNotPermittedCalls'] = (node) => numberOfNotPermittedCalls = node.getIntValue();
        deserializerMap['numberOfSuccessfulCalls'] = (node) => numberOfSuccessfulCalls = node.getIntValue();
        deserializerMap['state'] = (node) => state = node.getEnumValue<CircuitBreakerState>((stringValue) => CircuitBreakerState.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeEnumValue<CircuitBreakerState>('state', state, (e) => e?.value);
    }
}
