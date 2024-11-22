// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../group/group_account.dart';
import '../linkable.dart';
import '../organization/organizational_unit_account.dart';
import '../profile/access_profile_account.dart';
import '../profile/access_profile_account_with_attributes.dart';
import '../provisioning/provisioned_account.dart';
import './account.dart';
import './account_validity.dart';
import './internal_account.dart';

/// auto generated
class AccountPrimer extends Linkable implements Parsable {
    ///  The displayName property
    String? displayName;
    ///  The lastActive property
    DateTime? lastActive;
    ///  The username property
    String? username;
    ///  The uuid property
    String? uuid;
    ///  The validity property
    AccountValidity? validity;
    /// Instantiates a new [AccountPrimer] and sets the default values.
    AccountPrimer() : super() {
        type_ = 'auth.AccountPrimer';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static AccountPrimer createFromDiscriminatorValue(ParseNode parseNode) {
        var mappingValue = parseNode.getChildNode('\$type')?.getStringValue();
        return switch(mappingValue) {
            'auth.Account' => Account(),
            'auth.InternalAccount' => InternalAccount(),
            'group.GroupAccount' => GroupAccount(),
            'organization.OrganizationalUnitAccount' => OrganizationalUnitAccount(),
            'profile.AccessProfileAccount' => AccessProfileAccount(),
            'profile.AccessProfileAccountWithAttributes' => AccessProfileAccountWithAttributes(),
            'provisioning.ProvisionedAccount' => ProvisionedAccount(),
            _ => AccountPrimer(),
        };
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['displayName'] = (node) => displayName = node.getStringValue();
        deserializerMap['lastActive'] = (node) => lastActive = node.getDateTimeValue();
        deserializerMap['username'] = (node) => username = node.getStringValue();
        deserializerMap['uuid'] = (node) => uuid = node.getStringValue();
        deserializerMap['validity'] = (node) => validity = node.getEnumValue<AccountValidity>((stringValue) => AccountValidity.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeEnumValue<AccountValidity>('validity', validity, (e) => e?.value);
    }
}
