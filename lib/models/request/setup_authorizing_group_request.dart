// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../group/group_primer.dart';
import './authorizing_group_type.dart';
import './modification_request.dart';

/// auto generated
class SetupAuthorizingGroupRequest extends ModificationRequest implements Parsable {
    ///  The authorizingGroupType property
    AuthorizingGroupType? authorizingGroupType;
    ///  The connect property
    bool? connect;
    ///  The requestingGroup property
    GroupPrimer? requestingGroup;
    /// Instantiates a new [SetupAuthorizingGroupRequest] and sets the default values.
    SetupAuthorizingGroupRequest() : super() {
        type_ = 'request.SetupAuthorizingGroupRequest';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static SetupAuthorizingGroupRequest createFromDiscriminatorValue(ParseNode parseNode) {
        return SetupAuthorizingGroupRequest();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['authorizingGroupType'] = (node) => authorizingGroupType = node.getEnumValue<AuthorizingGroupType>((stringValue) => AuthorizingGroupType.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['connect'] = (node) => connect = node.getBoolValue();
        deserializerMap['requestingGroup'] = (node) => requestingGroup = node.getObjectValue<GroupPrimer>(GroupPrimer.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeEnumValue<AuthorizingGroupType>('authorizingGroupType', authorizingGroupType, (e) => e?.value);
        writer.writeBoolValue('connect', value:connect);
        writer.writeObjectValue<GroupPrimer>('requestingGroup', requestingGroup);
    }
}
