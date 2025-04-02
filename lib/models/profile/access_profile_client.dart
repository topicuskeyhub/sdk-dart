// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../client/client_application_primer.dart';
import '../linkable.dart';
import './access_profile_client_additional_objects.dart';
import './access_profile_primer.dart';

/// auto generated
class AccessProfileClient extends Linkable implements Parsable {
    ///  The accessProfile property
    AccessProfilePrimer? accessProfile;
    ///  The additionalObjects property
    AccessProfileClientAdditionalObjects? additionalObjects;
    ///  The client property
    ClientApplicationPrimer? client;
    /// Instantiates a new [AccessProfileClient] and sets the default values.
    AccessProfileClient() : super() {
        type_ = 'profile.AccessProfileClient';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static AccessProfileClient createFromDiscriminatorValue(ParseNode parseNode) {
        return AccessProfileClient();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['accessProfile'] = (node) => accessProfile = node.getObjectValue<AccessProfilePrimer>(AccessProfilePrimer.createFromDiscriminatorValue);
        deserializerMap['additionalObjects'] = (node) => additionalObjects = node.getObjectValue<AccessProfileClientAdditionalObjects>(AccessProfileClientAdditionalObjects.createFromDiscriminatorValue);
        deserializerMap['client'] = (node) => client = node.getObjectValue<ClientApplicationPrimer>(ClientApplicationPrimer.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<AccessProfilePrimer>('accessProfile', accessProfile);
        writer.writeObjectValue<AccessProfileClientAdditionalObjects>('additionalObjects', additionalObjects);
        writer.writeObjectValue<ClientApplicationPrimer>('client', client);
    }
}
