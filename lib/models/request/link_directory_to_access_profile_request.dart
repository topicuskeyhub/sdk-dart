import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../directory/account_directory_primer.dart';
import './abstract_access_profile_modification_request.dart';

class LinkDirectoryToAccessProfileRequest extends AbstractAccessProfileModificationRequest implements Parsable {
    ///  The directory property
    AccountDirectoryPrimer? directory;
    /// Instantiates a new [LinkDirectoryToAccessProfileRequest] and sets the default values.
    LinkDirectoryToAccessProfileRequest() : super() {
        typeEscaped = 'request.LinkDirectoryToAccessProfileRequest';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static LinkDirectoryToAccessProfileRequest createFromDiscriminatorValue(ParseNode parseNode) {
        return LinkDirectoryToAccessProfileRequest();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['directory'] = (node) => directory = node.getObjectValue<AccountDirectoryPrimer>(AccountDirectoryPrimer.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<AccountDirectoryPrimer>('directory', directory);
    }
}
