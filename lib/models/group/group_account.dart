// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../auth/account_primer.dart';
import '../auth/two_factor_authentication_status.dart';
import '../directory/account_directory_primer.dart';
import './group_account_additional_objects.dart';
import './group_rights.dart';

/// auto generated
class GroupAccount extends AccountPrimer implements Parsable {
    ///  The additionalObjects property
    GroupAccountAdditionalObjects? additionalObjects;
    ///  The directory property
    AccountDirectoryPrimer? directory;
    ///  The disconnectedNested property
    bool? disconnectedNested;
    ///  The endDate property
    DateOnly? endDate;
    ///  The lastUsed property
    DateOnly? lastUsed;
    ///  The nested property
    bool? nested;
    ///  The provisioningEndTime property
    DateTime? provisioningEndTime;
    ///  The rights property
    GroupRights? rights;
    ///  The twoFactorStatus property
    TwoFactorAuthenticationStatus? twoFactorStatus;
    ///  The visibleForProvisioning property
    bool? visibleForProvisioning;
    /// Instantiates a new [GroupAccount] and sets the default values.
    GroupAccount() : super() {
        type_ = 'group.GroupAccount';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static GroupAccount createFromDiscriminatorValue(ParseNode parseNode) {
        return GroupAccount();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['additionalObjects'] = (node) => additionalObjects = node.getObjectValue<GroupAccountAdditionalObjects>(GroupAccountAdditionalObjects.createFromDiscriminatorValue);
        deserializerMap['directory'] = (node) => directory = node.getObjectValue<AccountDirectoryPrimer>(AccountDirectoryPrimer.createFromDiscriminatorValue);
        deserializerMap['disconnectedNested'] = (node) => disconnectedNested = node.getBoolValue();
        deserializerMap['endDate'] = (node) => endDate = node.getDateOnlyValue();
        deserializerMap['lastUsed'] = (node) => lastUsed = node.getDateOnlyValue();
        deserializerMap['nested'] = (node) => nested = node.getBoolValue();
        deserializerMap['provisioningEndTime'] = (node) => provisioningEndTime = node.getDateTimeValue();
        deserializerMap['rights'] = (node) => rights = node.getEnumValue<GroupRights>((stringValue) => GroupRights.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['twoFactorStatus'] = (node) => twoFactorStatus = node.getEnumValue<TwoFactorAuthenticationStatus>((stringValue) => TwoFactorAuthenticationStatus.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['visibleForProvisioning'] = (node) => visibleForProvisioning = node.getBoolValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<GroupAccountAdditionalObjects>('additionalObjects', additionalObjects);
        writer.writeObjectValue<AccountDirectoryPrimer>('directory', directory);
        writer.writeDateOnlyValue('endDate', endDate);
        writer.writeEnumValue<GroupRights>('rights', rights, (e) => e?.value);
        writer.writeEnumValue<TwoFactorAuthenticationStatus>('twoFactorStatus', twoFactorStatus, (e) => e?.value);
    }
}
