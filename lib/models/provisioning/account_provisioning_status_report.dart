import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../non_linkable.dart';
import './account_provisioning_status.dart';

class AccountProvisioningStatusReport extends NonLinkable implements Parsable {
    ///  The status property
    Iterable<AccountProvisioningStatus>? status;
    /// Instantiates a new [AccountProvisioningStatusReport] and sets the default values.
    AccountProvisioningStatusReport() : super() {
        typeEscaped = 'provisioning.AccountProvisioningStatusReport';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static AccountProvisioningStatusReport createFromDiscriminatorValue(ParseNode parseNode) {
        return AccountProvisioningStatusReport();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['status'] = (node) => status = node.getCollectionOfObjectValues<AccountProvisioningStatus>(AccountProvisioningStatus.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeCollectionOfObjectValues<AccountProvisioningStatus>('status', status);
    }
}
