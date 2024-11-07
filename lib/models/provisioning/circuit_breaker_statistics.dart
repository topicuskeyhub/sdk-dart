import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../non_linkable.dart';
import './circuit_breaker_state.dart';

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
        typeEscaped = 'provisioning.CircuitBreakerStatistics';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static CircuitBreakerStatistics createFromDiscriminatorValue(ParseNode parseNode) {
        return CircuitBreakerStatistics();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['numberOfFailedCalls'] = (node) => numberOfFailedCalls = node.getIntValue();
        deserializerMap['numberOfNotPermittedCalls'] = (node) => numberOfNotPermittedCalls = node.getIntValue();
        deserializerMap['numberOfSuccessfulCalls'] = (node) => numberOfSuccessfulCalls = node.getIntValue();
        deserializerMap['state'] = (node) => state = node.getEnumValue<CircuitBreakerState>((stringValue) => CircuitBreakerState.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeEnumValue<CircuitBreakerState>('state', state, (e) => e?.value);
    }
}
