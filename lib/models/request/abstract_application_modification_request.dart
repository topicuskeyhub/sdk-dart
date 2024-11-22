// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../client/client_application_primer.dart';
import './grant_application_request.dart';
import './grant_client_permission_request.dart';
import './modification_request.dart';
import './transfer_application_administration_request.dart';
import './transfer_application_ownership_request.dart';

/// auto generated
class AbstractApplicationModificationRequest extends ModificationRequest implements Parsable {
    ///  The application property
    ClientApplicationPrimer? application;
    /// Instantiates a new [AbstractApplicationModificationRequest] and sets the default values.
    AbstractApplicationModificationRequest() : super() {
        type_ = 'request.AbstractApplicationModificationRequest';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static AbstractApplicationModificationRequest createFromDiscriminatorValue(ParseNode parseNode) {
        var mappingValue = parseNode.getChildNode('\$type')?.getStringValue();
        return switch(mappingValue) {
            'request.GrantApplicationRequest' => GrantApplicationRequest(),
            'request.GrantClientPermissionRequest' => GrantClientPermissionRequest(),
            'request.TransferApplicationAdministrationRequest' => TransferApplicationAdministrationRequest(),
            'request.TransferApplicationOwnershipRequest' => TransferApplicationOwnershipRequest(),
            _ => AbstractApplicationModificationRequest(),
        };
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['application'] = (node) => application = node.getObjectValue<ClientApplicationPrimer>(ClientApplicationPrimer.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<ClientApplicationPrimer>('application', application);
    }
}
