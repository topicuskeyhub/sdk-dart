import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../group/group_primer.dart';
import './authorizing_group_type.dart';
import './modification_request.dart';

class SetupAuthorizingGroupRequest extends ModificationRequest implements Parsable {
    ///  The authorizingGroupType property
    AuthorizingGroupType? authorizingGroupType;
    ///  The connect property
    bool? connect;
    ///  The requestingGroup property
    GroupPrimer? requestingGroup;
    /// Instantiates a new [SetupAuthorizingGroupRequest] and sets the default values.
     SetupAuthorizingGroupRequest() : super() {
        typeEscaped = 'request.SetupAuthorizingGroupRequest';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
     static SetupAuthorizingGroupRequest createFromDiscriminatorValue(ParseNode parseNode) {
        return SetupAuthorizingGroupRequest();
    }
    /// The deserialization information for the current model
    @override
     Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['authorizingGroupType'] = (node) => authorizingGroupType = node.getEnumValue<AuthorizingGroupType>((stringValue) => AuthorizingGroupType.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['connect'] = (node) => connect = node.getBoolValue();
        deserializerMap['requestingGroup'] = (node) => requestingGroup = node.getObjectValue<GroupPrimer>(GroupPrimer.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
     void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeEnumValue<AuthorizingGroupType>('authorizingGroupType', authorizingGroupType, (e) => e?.value);
        writer.writeBoolValue('connect', value:connect);
        writer.writeObjectValue<GroupPrimer>('requestingGroup', requestingGroup);
    }
}
