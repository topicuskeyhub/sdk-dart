import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../directory/account_directory_primer.dart';
import './modification_request.dart';

class VerifyInternalAccountRequest extends ModificationRequest implements Parsable {
    ///  The directory property
    AccountDirectoryPrimer? directory;
    ///  The internalAccountName property
    String? internalAccountName;
    /// Instantiates a new [VerifyInternalAccountRequest] and sets the default values.
     VerifyInternalAccountRequest() : super() {
        typeEscaped = 'request.VerifyInternalAccountRequest';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
     static VerifyInternalAccountRequest createFromDiscriminatorValue(ParseNode parseNode) {
        return VerifyInternalAccountRequest();
    }
    /// The deserialization information for the current model
    @override
     Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['directory'] = (node) => directory = node.getObjectValue<AccountDirectoryPrimer>(AccountDirectoryPrimer.createFromDiscriminatorValue);
        deserializerMap['internalAccountName'] = (node) => internalAccountName = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
     void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<AccountDirectoryPrimer>('directory', directory);
        writer.writeStringValue('internalAccountName', internalAccountName);
    }
}
