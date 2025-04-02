// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../client/client_application_primer.dart';
import './abstract_access_profile_modification_request.dart';

/// auto generated
class GrantApplicationRequest extends AbstractAccessProfileModificationRequest implements Parsable {
    ///  The application property
    ClientApplicationPrimer? application;
    /// Instantiates a new [GrantApplicationRequest] and sets the default values.
    GrantApplicationRequest() : super() {
        type_ = 'request.GrantApplicationRequest';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static GrantApplicationRequest createFromDiscriminatorValue(ParseNode parseNode) {
        return GrantApplicationRequest();
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
