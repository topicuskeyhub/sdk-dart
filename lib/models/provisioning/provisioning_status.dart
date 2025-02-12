// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../non_linkable.dart';
import './group_provisioning_status.dart';

/// auto generated
class ProvisioningStatus extends NonLinkable implements Parsable {
    ///  The allLoaded property
    bool? allLoaded;
    ///  The groups property
    Iterable<GroupProvisioningStatus>? groups;
    ///  The ignoreErrors property
    bool? ignoreErrors;
    ///  The restrictedByLicense property
    bool? restrictedByLicense;
    /// Instantiates a new [ProvisioningStatus] and sets the default values.
    ProvisioningStatus() : super() {
        type_ = 'provisioning.ProvisioningStatus';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ProvisioningStatus createFromDiscriminatorValue(ParseNode parseNode) {
        return ProvisioningStatus();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['allLoaded'] = (node) => allLoaded = node.getBoolValue();
        deserializerMap['groups'] = (node) => groups = node.getCollectionOfObjectValues<GroupProvisioningStatus>(GroupProvisioningStatus.createFromDiscriminatorValue);
        deserializerMap['ignoreErrors'] = (node) => ignoreErrors = node.getBoolValue();
        deserializerMap['restrictedByLicense'] = (node) => restrictedByLicense = node.getBoolValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeBoolValue('allLoaded', value:allLoaded);
        writer.writeCollectionOfObjectValues<GroupProvisioningStatus>('groups', groups);
        writer.writeBoolValue('ignoreErrors', value:ignoreErrors);
        writer.writeBoolValue('restrictedByLicense', value:restrictedByLicense);
    }
}
