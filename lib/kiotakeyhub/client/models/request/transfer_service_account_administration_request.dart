import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../serviceaccount/service_account_primer.dart';
import './modification_request.dart';

class TransferServiceAccountAdministrationRequest extends ModificationRequest implements Parsable {
    ///  The serviceAccount property
    ServiceAccountPrimer? serviceAccount;
    /// Instantiates a new [TransferServiceAccountAdministrationRequest] and sets the default values.
     TransferServiceAccountAdministrationRequest() : super() {
        typeEscaped = 'request.TransferServiceAccountAdministrationRequest';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
     static TransferServiceAccountAdministrationRequest createFromDiscriminatorValue(ParseNode parseNode) {
        return TransferServiceAccountAdministrationRequest();
    }
    /// The deserialization information for the current model
    @override
     Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['serviceAccount'] = (node) => serviceAccount = node.getObjectValue<ServiceAccountPrimer>(ServiceAccountPrimer.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
     void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<ServiceAccountPrimer>('serviceAccount', serviceAccount);
    }
}
