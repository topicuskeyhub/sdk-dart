import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../linkable.dart';
import './account_directory.dart';
import './account_directory_type.dart';
import './internal_directory.dart';
import './l_d_a_p_directory.dart';
import './maintenance_directory.dart';
import './o_i_d_c_directory.dart';
import './pending_accounts_directory.dart';

class AccountDirectoryPrimer extends Linkable implements Parsable {
    ///  The type property
    AccountDirectoryType? accountDirectoryPrimerType;
    ///  The accountValiditySupported property
    bool? accountValiditySupported;
    ///  The active property
    bool? active;
    ///  The name property
    String? name;
    ///  The uuid property
    String? uuid;
    /// Instantiates a new [AccountDirectoryPrimer] and sets the default values.
    AccountDirectoryPrimer() : super() {
        typeEscaped = 'directory.AccountDirectoryPrimer';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static AccountDirectoryPrimer createFromDiscriminatorValue(ParseNode parseNode) {
        var mappingValue = parseNode.getChildNode('\$type')?.getStringValue();
        return switch(mappingValue) {
            'directory.AccountDirectory' => AccountDirectory(),
            'directory.InternalDirectory' => InternalDirectory(),
            'directory.LDAPDirectory' => LDAPDirectory(),
            'directory.MaintenanceDirectory' => MaintenanceDirectory(),
            'directory.OIDCDirectory' => OIDCDirectory(),
            'directory.PendingAccountsDirectory' => PendingAccountsDirectory(),
            _ => AccountDirectoryPrimer(),
        };
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['type'] = (node) => accountDirectoryPrimerType = node.getEnumValue<AccountDirectoryType>((stringValue) => AccountDirectoryType.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['accountValiditySupported'] = (node) => accountValiditySupported = node.getBoolValue();
        deserializerMap['active'] = (node) => active = node.getBoolValue();
        deserializerMap['name'] = (node) => name = node.getStringValue();
        deserializerMap['uuid'] = (node) => uuid = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeEnumValue<AccountDirectoryType>('type', accountDirectoryPrimerType, (e) => e?.value);
        writer.writeBoolValue('active', value:active);
        writer.writeStringValue('name', name);
    }
}
