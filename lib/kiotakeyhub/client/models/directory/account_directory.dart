import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../group/group_primer.dart';
import '../organization/organizational_unit_primer.dart';
import './account_directory_additional_objects.dart';
import './account_directory_primer.dart';
import './directory_rotating_password.dart';
import './internal_directory.dart';
import './l_d_a_p_directory.dart';
import './maintenance_directory.dart';
import './o_i_d_c_directory.dart';
import './pending_accounts_directory.dart';

class AccountDirectory extends AccountDirectoryPrimer implements Parsable {
    ///  The additionalObjects property
    AccountDirectoryAdditionalObjects? additionalObjects;
    ///  The baseOrganizationalUnit property
    OrganizationalUnitPrimer? baseOrganizationalUnit;
    ///  The defaultDirectory property
    bool? defaultDirectory;
    ///  The helpdeskGroup property
    GroupPrimer? helpdeskGroup;
    ///  The restrict2fa property
    bool? restrict2fa;
    ///  The rotatingPassword property
    DirectoryRotatingPassword? rotatingPassword;
    ///  The usernameCustomizable property
    bool? usernameCustomizable;
    /// Instantiates a new [AccountDirectory] and sets the default values.
     AccountDirectory() : super() {
        typeEscaped = 'directory.AccountDirectory';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
     static AccountDirectory createFromDiscriminatorValue(ParseNode parseNode) {
        var mappingValue = parseNode.getChildNode('\$type')?.getStringValue();
        return switch(mappingValue) {
            'directory.InternalDirectory' => InternalDirectory(),
            'directory.LDAPDirectory' => LDAPDirectory(),
            'directory.MaintenanceDirectory' => MaintenanceDirectory(),
            'directory.OIDCDirectory' => OIDCDirectory(),
            'directory.PendingAccountsDirectory' => PendingAccountsDirectory(),
            _ => AccountDirectory(),
        };
    }
    /// The deserialization information for the current model
    @override
     Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['additionalObjects'] = (node) => additionalObjects = node.getObjectValue<AccountDirectoryAdditionalObjects>(AccountDirectoryAdditionalObjects.createFromDiscriminatorValue);
        deserializerMap['baseOrganizationalUnit'] = (node) => baseOrganizationalUnit = node.getObjectValue<OrganizationalUnitPrimer>(OrganizationalUnitPrimer.createFromDiscriminatorValue);
        deserializerMap['defaultDirectory'] = (node) => defaultDirectory = node.getBoolValue();
        deserializerMap['helpdeskGroup'] = (node) => helpdeskGroup = node.getObjectValue<GroupPrimer>(GroupPrimer.createFromDiscriminatorValue);
        deserializerMap['restrict2fa'] = (node) => restrict2fa = node.getBoolValue();
        deserializerMap['rotatingPassword'] = (node) => rotatingPassword = node.getEnumValue<DirectoryRotatingPassword>((stringValue) => DirectoryRotatingPassword.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['usernameCustomizable'] = (node) => usernameCustomizable = node.getBoolValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
     void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<AccountDirectoryAdditionalObjects>('additionalObjects', additionalObjects);
        writer.writeObjectValue<OrganizationalUnitPrimer>('baseOrganizationalUnit', baseOrganizationalUnit);
        writer.writeBoolValue('defaultDirectory', value:defaultDirectory);
        writer.writeObjectValue<GroupPrimer>('helpdeskGroup', helpdeskGroup);
        writer.writeBoolValue('restrict2fa', value:restrict2fa);
        writer.writeEnumValue<DirectoryRotatingPassword>('rotatingPassword', rotatingPassword, (e) => e?.value);
        writer.writeBoolValue('usernameCustomizable', value:usernameCustomizable);
    }
}
