// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../group/group_primer.dart';
import './modification_request.dart';

/// auto generated
class SetupGroupExclusionRequest extends ModificationRequest implements Parsable {
    ///  The connect property
    bool? connect;
    ///  The requestingGroup property
    GroupPrimer? requestingGroup;
    /// Instantiates a new [SetupGroupExclusionRequest] and sets the default values.
    SetupGroupExclusionRequest() : super() {
        type_ = 'request.SetupGroupExclusionRequest';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static SetupGroupExclusionRequest createFromDiscriminatorValue(ParseNode parseNode) {
        return SetupGroupExclusionRequest();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['connect'] = (node) => connect = node.getBoolValue();
        deserializerMap['requestingGroup'] = (node) => requestingGroup = node.getObjectValue<GroupPrimer>(GroupPrimer.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeBoolValue('connect', value:connect);
        writer.writeObjectValue<GroupPrimer>('requestingGroup', requestingGroup);
    }
}
