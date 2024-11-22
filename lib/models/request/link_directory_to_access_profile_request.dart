// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../directory/account_directory_primer.dart';
import './abstract_access_profile_modification_request.dart';

/// auto generated
class LinkDirectoryToAccessProfileRequest extends AbstractAccessProfileModificationRequest implements Parsable {
    ///  The directory property
    AccountDirectoryPrimer? directory;
    /// Instantiates a new [LinkDirectoryToAccessProfileRequest] and sets the default values.
    LinkDirectoryToAccessProfileRequest() : super() {
        type_ = 'request.LinkDirectoryToAccessProfileRequest';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static LinkDirectoryToAccessProfileRequest createFromDiscriminatorValue(ParseNode parseNode) {
        return LinkDirectoryToAccessProfileRequest();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['directory'] = (node) => directory = node.getObjectValue<AccountDirectoryPrimer>(AccountDirectoryPrimer.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<AccountDirectoryPrimer>('directory', directory);
    }
}
