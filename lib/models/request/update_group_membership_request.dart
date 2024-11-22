// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../auth/account_primer.dart';
import '../group/group_rights.dart';
import './modification_request.dart';
import './update_group_membership_type.dart';

/// auto generated
class UpdateGroupMembershipRequest extends ModificationRequest implements Parsable {
    ///  The accountToUpdate property
    AccountPrimer? accountToUpdate;
    ///  The currentEndDate property
    DateOnly? currentEndDate;
    ///  The currentRights property
    GroupRights? currentRights;
    ///  The endDate property
    DateOnly? endDate;
    ///  The rights property
    GroupRights? rights;
    ///  The updateGroupMembershipType property
    UpdateGroupMembershipType? updateGroupMembershipType;
    /// Instantiates a new [UpdateGroupMembershipRequest] and sets the default values.
    UpdateGroupMembershipRequest() : super() {
        type_ = 'request.UpdateGroupMembershipRequest';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static UpdateGroupMembershipRequest createFromDiscriminatorValue(ParseNode parseNode) {
        return UpdateGroupMembershipRequest();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['accountToUpdate'] = (node) => accountToUpdate = node.getObjectValue<AccountPrimer>(AccountPrimer.createFromDiscriminatorValue);
        deserializerMap['currentEndDate'] = (node) => currentEndDate = node.getDateOnlyValue();
        deserializerMap['currentRights'] = (node) => currentRights = node.getEnumValue<GroupRights>((stringValue) => GroupRights.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['endDate'] = (node) => endDate = node.getDateOnlyValue();
        deserializerMap['rights'] = (node) => rights = node.getEnumValue<GroupRights>((stringValue) => GroupRights.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['updateGroupMembershipType'] = (node) => updateGroupMembershipType = node.getEnumValue<UpdateGroupMembershipType>((stringValue) => UpdateGroupMembershipType.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<AccountPrimer>('accountToUpdate', accountToUpdate);
        writer.writeEnumValue<GroupRights>('currentRights', currentRights, (e) => e?.value);
        writer.writeDateOnlyValue('endDate', endDate);
        writer.writeEnumValue<GroupRights>('rights', rights, (e) => e?.value);
        writer.writeEnumValue<UpdateGroupMembershipType>('updateGroupMembershipType', updateGroupMembershipType, (e) => e?.value);
    }
}
