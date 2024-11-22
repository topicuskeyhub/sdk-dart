// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../serviceaccount/service_account_primer.dart';
import './modification_request.dart';

/// auto generated
class TransferServiceAccountAdministrationRequest extends ModificationRequest implements Parsable {
    ///  The serviceAccount property
    ServiceAccountPrimer? serviceAccount;
    /// Instantiates a new [TransferServiceAccountAdministrationRequest] and sets the default values.
    TransferServiceAccountAdministrationRequest() : super() {
        type_ = 'request.TransferServiceAccountAdministrationRequest';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static TransferServiceAccountAdministrationRequest createFromDiscriminatorValue(ParseNode parseNode) {
        return TransferServiceAccountAdministrationRequest();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['serviceAccount'] = (node) => serviceAccount = node.getObjectValue<ServiceAccountPrimer>(ServiceAccountPrimer.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<ServiceAccountPrimer>('serviceAccount', serviceAccount);
    }
}
