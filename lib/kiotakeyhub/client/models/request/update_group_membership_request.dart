import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../auth/account_primer.dart';
import '../group/group_rights.dart';
import './modification_request.dart';
import './update_group_membership_type.dart';

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
        typeEscaped = 'request.UpdateGroupMembershipRequest';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
     static UpdateGroupMembershipRequest createFromDiscriminatorValue(ParseNode parseNode) {
        return UpdateGroupMembershipRequest();
    }
    /// The deserialization information for the current model
    @override
     Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['accountToUpdate'] = (node) => accountToUpdate = node.getObjectValue<AccountPrimer>(AccountPrimer.createFromDiscriminatorValue);
        deserializerMap['currentEndDate'] = (node) => currentEndDate = node.getDateOnlyValue();
        deserializerMap['currentRights'] = (node) => currentRights = node.getEnumValue<GroupRights>((stringValue) => GroupRights.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['endDate'] = (node) => endDate = node.getDateOnlyValue();
        deserializerMap['rights'] = (node) => rights = node.getEnumValue<GroupRights>((stringValue) => GroupRights.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['updateGroupMembershipType'] = (node) => updateGroupMembershipType = node.getEnumValue<UpdateGroupMembershipType>((stringValue) => UpdateGroupMembershipType.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
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
