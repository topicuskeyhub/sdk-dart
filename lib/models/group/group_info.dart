// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../non_linkable.dart';

/// auto generated
class GroupInfo extends NonLinkable implements Parsable {
    ///  The nrAccounts property
    int? nrAccounts;
    ///  The nrAccountsWithVault property
    int? nrAccountsWithVault;
    ///  The nrAudits property
    int? nrAudits;
    ///  The nrClients property
    int? nrClients;
    ///  The nrProvisionedSystems property
    int? nrProvisionedSystems;
    ///  The nrVaultRecords property
    int? nrVaultRecords;
    /// Instantiates a new [GroupInfo] and sets the default values.
    GroupInfo() : super() {
        type_ = 'group.GroupInfo';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static GroupInfo createFromDiscriminatorValue(ParseNode parseNode) {
        return GroupInfo();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['nrAccounts'] = (node) => nrAccounts = node.getIntValue();
        deserializerMap['nrAccountsWithVault'] = (node) => nrAccountsWithVault = node.getIntValue();
        deserializerMap['nrAudits'] = (node) => nrAudits = node.getIntValue();
        deserializerMap['nrClients'] = (node) => nrClients = node.getIntValue();
        deserializerMap['nrProvisionedSystems'] = (node) => nrProvisionedSystems = node.getIntValue();
        deserializerMap['nrVaultRecords'] = (node) => nrVaultRecords = node.getIntValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
    }
}
