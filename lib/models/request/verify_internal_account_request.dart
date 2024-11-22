// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../directory/account_directory_primer.dart';
import './modification_request.dart';

/// auto generated
class VerifyInternalAccountRequest extends ModificationRequest implements Parsable {
    ///  The directory property
    AccountDirectoryPrimer? directory;
    ///  The internalAccountName property
    String? internalAccountName;
    /// Instantiates a new [VerifyInternalAccountRequest] and sets the default values.
    VerifyInternalAccountRequest() : super() {
        type_ = 'request.VerifyInternalAccountRequest';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static VerifyInternalAccountRequest createFromDiscriminatorValue(ParseNode parseNode) {
        return VerifyInternalAccountRequest();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['directory'] = (node) => directory = node.getObjectValue<AccountDirectoryPrimer>(AccountDirectoryPrimer.createFromDiscriminatorValue);
        deserializerMap['internalAccountName'] = (node) => internalAccountName = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<AccountDirectoryPrimer>('directory', directory);
        writer.writeStringValue('internalAccountName', internalAccountName);
    }
}
