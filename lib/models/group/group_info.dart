import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../non_linkable.dart';

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
        typeEscaped = 'group.GroupInfo';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static GroupInfo createFromDiscriminatorValue(ParseNode parseNode) {
        return GroupInfo();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['nrAccounts'] = (node) => nrAccounts = node.getIntValue();
        deserializerMap['nrAccountsWithVault'] = (node) => nrAccountsWithVault = node.getIntValue();
        deserializerMap['nrAudits'] = (node) => nrAudits = node.getIntValue();
        deserializerMap['nrClients'] = (node) => nrClients = node.getIntValue();
        deserializerMap['nrProvisionedSystems'] = (node) => nrProvisionedSystems = node.getIntValue();
        deserializerMap['nrVaultRecords'] = (node) => nrVaultRecords = node.getIntValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
    }
}
