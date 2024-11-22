// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../provisioning/provisioned_system_primer.dart';
import './create_group_on_system_request.dart';
import './create_provisioned_namespace_request.dart';
import './create_service_account_request.dart';
import './modification_request.dart';
import './remove_provisioned_system_request.dart';
import './transfer_provisioned_system_administration_request.dart';
import './transfer_provisioned_system_content_administration_request.dart';
import './transfer_provisioned_system_ownership_request.dart';

/// auto generated
class AbstractProvisionedSystemModificationRequest extends ModificationRequest implements Parsable {
    ///  The system property
    ProvisionedSystemPrimer? system;
    /// Instantiates a new [AbstractProvisionedSystemModificationRequest] and sets the default values.
    AbstractProvisionedSystemModificationRequest() : super() {
        type_ = 'request.AbstractProvisionedSystemModificationRequest';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static AbstractProvisionedSystemModificationRequest createFromDiscriminatorValue(ParseNode parseNode) {
        var mappingValue = parseNode.getChildNode('\$type')?.getStringValue();
        return switch(mappingValue) {
            'request.CreateGroupOnSystemRequest' => CreateGroupOnSystemRequest(),
            'request.CreateProvisionedNamespaceRequest' => CreateProvisionedNamespaceRequest(),
            'request.CreateServiceAccountRequest' => CreateServiceAccountRequest(),
            'request.RemoveProvisionedSystemRequest' => RemoveProvisionedSystemRequest(),
            'request.TransferProvisionedSystemAdministrationRequest' => TransferProvisionedSystemAdministrationRequest(),
            'request.TransferProvisionedSystemContentAdministrationRequest' => TransferProvisionedSystemContentAdministrationRequest(),
            'request.TransferProvisionedSystemOwnershipRequest' => TransferProvisionedSystemOwnershipRequest(),
            _ => AbstractProvisionedSystemModificationRequest(),
        };
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['system'] = (node) => system = node.getObjectValue<ProvisionedSystemPrimer>(ProvisionedSystemPrimer.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<ProvisionedSystemPrimer>('system', system);
    }
}
