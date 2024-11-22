// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../non_linkable.dart';

/// auto generated
class ProvisioningManagementPermissions extends NonLinkable implements Parsable {
    ///  The createNewGroupsAllowed property
    bool? createNewGroupsAllowed;
    ///  The createServiceAccountsAllowed property
    bool? createServiceAccountsAllowed;
    ///  The reuseExistingGroupsAllowed property
    bool? reuseExistingGroupsAllowed;
    /// Instantiates a new [ProvisioningManagementPermissions] and sets the default values.
    ProvisioningManagementPermissions() : super() {
        type_ = 'provisioning.ProvisioningManagementPermissions';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ProvisioningManagementPermissions createFromDiscriminatorValue(ParseNode parseNode) {
        return ProvisioningManagementPermissions();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['createNewGroupsAllowed'] = (node) => createNewGroupsAllowed = node.getBoolValue();
        deserializerMap['createServiceAccountsAllowed'] = (node) => createServiceAccountsAllowed = node.getBoolValue();
        deserializerMap['reuseExistingGroupsAllowed'] = (node) => reuseExistingGroupsAllowed = node.getBoolValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
    }
}
