import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../group/group_account.dart';
import '../linkable.dart';
import '../organization/organizational_unit_account.dart';
import '../profile/access_profile_account.dart';
import '../provisioning/provisioned_account.dart';
import './account.dart';
import './account_validity.dart';
import './internal_account.dart';

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
        typeEscaped = 'auth.AccountPrimer';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
     static AccountPrimer createFromDiscriminatorValue(ParseNode parseNode) {
        var mappingValue = parseNode.getChildNode('\$type')?.getStringValue();
        return switch(mappingValue) {
            'auth.Account' => Account(),
            'auth.InternalAccount' => InternalAccount(),
            'group.GroupAccount' => GroupAccount(),
            'organization.OrganizationalUnitAccount' => OrganizationalUnitAccount(),
            'profile.AccessProfileAccount' => AccessProfileAccount(),
            'provisioning.ProvisionedAccount' => ProvisionedAccount(),
            _ => AccountPrimer(),
        };
    }
    /// The deserialization information for the current model
    @override
     Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['displayName'] = (node) => displayName = node.getStringValue();
        deserializerMap['lastActive'] = (node) => lastActive = node.getDateTimeValue();
        deserializerMap['username'] = (node) => username = node.getStringValue();
        deserializerMap['uuid'] = (node) => uuid = node.getStringValue();
        deserializerMap['validity'] = (node) => validity = node.getEnumValue<AccountValidity>((stringValue) => AccountValidity.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
     void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeEnumValue<AccountValidity>('validity', validity, (e) => e?.value);
    }
}
