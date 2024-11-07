import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../group/group_primer.dart';
import './group_nest_account_action.dart';
import './modification_request.dart';

class SetupNestedGroupRequest extends ModificationRequest implements Parsable {
    ///  The accountAction property
    GroupNestAccountAction? accountAction;
    ///  The connect property
    bool? connect;
    ///  The requestingGroup property
    GroupPrimer? requestingGroup;
    /// Instantiates a new [SetupNestedGroupRequest] and sets the default values.
    SetupNestedGroupRequest() : super() {
        typeEscaped = 'request.SetupNestedGroupRequest';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static SetupNestedGroupRequest createFromDiscriminatorValue(ParseNode parseNode) {
        return SetupNestedGroupRequest();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['accountAction'] = (node) => accountAction = node.getEnumValue<GroupNestAccountAction>((stringValue) => GroupNestAccountAction.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['connect'] = (node) => connect = node.getBoolValue();
        deserializerMap['requestingGroup'] = (node) => requestingGroup = node.getObjectValue<GroupPrimer>(GroupPrimer.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeEnumValue<GroupNestAccountAction>('accountAction', accountAction, (e) => e?.value);
        writer.writeBoolValue('connect', value:connect);
        writer.writeObjectValue<GroupPrimer>('requestingGroup', requestingGroup);
    }
}
