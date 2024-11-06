import 'package:kiota_abstractions/kiota_abstractions.dart';
import './account_directory.dart';

class PendingAccountsDirectory extends AccountDirectory implements Parsable {
    /// Instantiates a new [PendingAccountsDirectory] and sets the default values.
    PendingAccountsDirectory() : super() {
        typeEscaped = 'directory.PendingAccountsDirectory';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static PendingAccountsDirectory createFromDiscriminatorValue(ParseNode parseNode) {
        return PendingAccountsDirectory();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
    }
}
