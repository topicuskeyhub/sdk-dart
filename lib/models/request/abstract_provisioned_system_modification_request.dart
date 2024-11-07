import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../provisioning/provisioned_system_primer.dart';
import './create_group_on_system_request.dart';
import './create_provisioned_namespace_request.dart';
import './create_service_account_request.dart';
import './modification_request.dart';
import './remove_provisioned_system_request.dart';
import './transfer_provisioned_system_administration_request.dart';
import './transfer_provisioned_system_content_administration_request.dart';
import './transfer_provisioned_system_ownership_request.dart';

class AbstractProvisionedSystemModificationRequest extends ModificationRequest implements Parsable {
    ///  The system property
    ProvisionedSystemPrimer? system;
    /// Instantiates a new [AbstractProvisionedSystemModificationRequest] and sets the default values.
    AbstractProvisionedSystemModificationRequest() : super() {
        typeEscaped = 'request.AbstractProvisionedSystemModificationRequest';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
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
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['system'] = (node) => system = node.getObjectValue<ProvisionedSystemPrimer>(ProvisionedSystemPrimer.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<ProvisionedSystemPrimer>('system', system);
    }
}
