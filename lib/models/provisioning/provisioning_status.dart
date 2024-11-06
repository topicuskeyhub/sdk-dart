import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../non_linkable.dart';
import './group_provisioning_status.dart';

class ProvisioningStatus extends NonLinkable implements Parsable {
    ///  The groups property
    Iterable<GroupProvisioningStatus>? groups;
    ///  The ignoreErrors property
    bool? ignoreErrors;
    ///  The restrictedByLicense property
    bool? restrictedByLicense;
    /// Instantiates a new [ProvisioningStatus] and sets the default values.
    ProvisioningStatus() : super() {
        typeEscaped = 'provisioning.ProvisioningStatus';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static ProvisioningStatus createFromDiscriminatorValue(ParseNode parseNode) {
        return ProvisioningStatus();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['groups'] = (node) => groups = node.getCollectionOfObjectValues<GroupProvisioningStatus>(GroupProvisioningStatus.createFromDiscriminatorValue);
        deserializerMap['ignoreErrors'] = (node) => ignoreErrors = node.getBoolValue();
        deserializerMap['restrictedByLicense'] = (node) => restrictedByLicense = node.getBoolValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeCollectionOfObjectValues<GroupProvisioningStatus>('groups', groups);
        writer.writeBoolValue('ignoreErrors', value:ignoreErrors);
        writer.writeBoolValue('restrictedByLicense', value:restrictedByLicense);
    }
}
