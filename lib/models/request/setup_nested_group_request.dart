// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../group/group_primer.dart';
import './group_nest_account_action.dart';
import './modification_request.dart';

/// auto generated
class SetupNestedGroupRequest extends ModificationRequest implements Parsable {
    ///  The accountAction property
    GroupNestAccountAction? accountAction;
    ///  The connect property
    bool? connect;
    ///  The requestingGroup property
    GroupPrimer? requestingGroup;
    /// Instantiates a new [SetupNestedGroupRequest] and sets the default values.
    SetupNestedGroupRequest() : super() {
        type_ = 'request.SetupNestedGroupRequest';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static SetupNestedGroupRequest createFromDiscriminatorValue(ParseNode parseNode) {
        return SetupNestedGroupRequest();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['accountAction'] = (node) => accountAction = node.getEnumValue<GroupNestAccountAction>((stringValue) => GroupNestAccountAction.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['connect'] = (node) => connect = node.getBoolValue();
        deserializerMap['requestingGroup'] = (node) => requestingGroup = node.getObjectValue<GroupPrimer>(GroupPrimer.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeEnumValue<GroupNestAccountAction>('accountAction', accountAction, (e) => e?.value);
        writer.writeBoolValue('connect', value:connect);
        writer.writeObjectValue<GroupPrimer>('requestingGroup', requestingGroup);
    }
}
