import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../non_linkable.dart';

class ProvisioningManagementPermissions extends NonLinkable implements Parsable {
    ///  The createNewGroupsAllowed property
    bool? createNewGroupsAllowed;
    ///  The createServiceAccountsAllowed property
    bool? createServiceAccountsAllowed;
    ///  The reuseExistingGroupsAllowed property
    bool? reuseExistingGroupsAllowed;
    /// Instantiates a new [ProvisioningManagementPermissions] and sets the default values.
    ProvisioningManagementPermissions() : super() {
        typeEscaped = 'provisioning.ProvisioningManagementPermissions';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static ProvisioningManagementPermissions createFromDiscriminatorValue(ParseNode parseNode) {
        return ProvisioningManagementPermissions();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['createNewGroupsAllowed'] = (node) => createNewGroupsAllowed = node.getBoolValue();
        deserializerMap['createServiceAccountsAllowed'] = (node) => createServiceAccountsAllowed = node.getBoolValue();
        deserializerMap['reuseExistingGroupsAllowed'] = (node) => reuseExistingGroupsAllowed = node.getBoolValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
    }
}
