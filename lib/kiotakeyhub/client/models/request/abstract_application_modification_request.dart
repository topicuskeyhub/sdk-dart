import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../client/client_application_primer.dart';
import './grant_application_request.dart';
import './grant_client_permission_request.dart';
import './modification_request.dart';
import './transfer_application_administration_request.dart';
import './transfer_application_ownership_request.dart';

class AbstractApplicationModificationRequest extends ModificationRequest implements Parsable {
    ///  The application property
    ClientApplicationPrimer? application;
    /// Instantiates a new [AbstractApplicationModificationRequest] and sets the default values.
     AbstractApplicationModificationRequest() : super() {
        typeEscaped = 'request.AbstractApplicationModificationRequest';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
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
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['application'] = (node) => application = node.getObjectValue<ClientApplicationPrimer>(ClientApplicationPrimer.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
     void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<ClientApplicationPrimer>('application', application);
    }
}
