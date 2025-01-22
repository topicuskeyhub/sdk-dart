// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../linkable.dart';
import './client_application_primer.dart';

/// auto generated
class ClientConsent extends Linkable implements Parsable {
    ///  The allowedScopes property
    Iterable<String>? allowedScopes;
    ///  The client property
    ClientApplicationPrimer? client;
    ///  The identifier property
    String? identifier;
    /// Instantiates a new [ClientConsent] and sets the default values.
    ClientConsent() : super() {
        type_ = 'client.ClientConsent';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ClientConsent createFromDiscriminatorValue(ParseNode parseNode) {
        return ClientConsent();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['allowedScopes'] = (node) => allowedScopes = node.getCollectionOfPrimitiveValues<String>();
        deserializerMap['client'] = (node) => client = node.getObjectValue<ClientApplicationPrimer>(ClientApplicationPrimer.createFromDiscriminatorValue);
        deserializerMap['identifier'] = (node) => identifier = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeCollectionOfPrimitiveValues<String?>('allowedScopes', allowedScopes);
        writer.writeObjectValue<ClientApplicationPrimer>('client', client);
    }
}