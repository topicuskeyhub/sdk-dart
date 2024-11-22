// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../non_linkable.dart';
import './account_provisioning_status.dart';

/// auto generated
class AccountProvisioningStatusReport extends NonLinkable implements Parsable {
    ///  The status property
    Iterable<AccountProvisioningStatus>? status;
    /// Instantiates a new [AccountProvisioningStatusReport] and sets the default values.
    AccountProvisioningStatusReport() : super() {
        type_ = 'provisioning.AccountProvisioningStatusReport';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static AccountProvisioningStatusReport createFromDiscriminatorValue(ParseNode parseNode) {
        return AccountProvisioningStatusReport();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['status'] = (node) => status = node.getCollectionOfObjectValues<AccountProvisioningStatus>(AccountProvisioningStatus.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeCollectionOfObjectValues<AccountProvisioningStatus>('status', status);
    }
}
