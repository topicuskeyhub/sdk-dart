import 'package:kiota_abstractions/kiota_abstractions.dart';
import './account_group_additional_objects.dart';
import './group_folder.dart';
import './group_primer.dart';
import './group_rights.dart';

class AccountGroup extends GroupPrimer implements Parsable {
    ///  The additionalObjects property
    AccountGroupAdditionalObjects? additionalObjects;
    ///  The endDate property
    DateOnly? endDate;
    ///  The folder property
    GroupFolder? folder;
    ///  The lastUsed property
    DateOnly? lastUsed;
    ///  The provisioningEndTime property
    DateTime? provisioningEndTime;
    ///  The rights property
    GroupRights? rights;
    ///  The visibleForProvisioning property
    bool? visibleForProvisioning;
    /// Instantiates a new [AccountGroup] and sets the default values.
     AccountGroup() : super() {
        typeEscaped = 'group.AccountGroup';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
     static AccountGroup createFromDiscriminatorValue(ParseNode parseNode) {
        return AccountGroup();
    }
    /// The deserialization information for the current model
    @override
     Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['additionalObjects'] = (node) => additionalObjects = node.getObjectValue<AccountGroupAdditionalObjects>(AccountGroupAdditionalObjects.createFromDiscriminatorValue);
        deserializerMap['endDate'] = (node) => endDate = node.getDateOnlyValue();
        deserializerMap['folder'] = (node) => folder = node.getObjectValue<GroupFolder>(GroupFolder.createFromDiscriminatorValue);
        deserializerMap['lastUsed'] = (node) => lastUsed = node.getDateOnlyValue();
        deserializerMap['provisioningEndTime'] = (node) => provisioningEndTime = node.getDateTimeValue();
        deserializerMap['rights'] = (node) => rights = node.getEnumValue<GroupRights>((stringValue) => GroupRights.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['visibleForProvisioning'] = (node) => visibleForProvisioning = node.getBoolValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
     void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<AccountGroupAdditionalObjects>('additionalObjects', additionalObjects);
        writer.writeDateOnlyValue('endDate', endDate);
        writer.writeObjectValue<GroupFolder>('folder', folder);
        writer.writeEnumValue<GroupRights>('rights', rights, (e) => e?.value);
    }
}
