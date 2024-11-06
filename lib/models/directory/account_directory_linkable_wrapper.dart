import 'package:kiota_abstractions/kiota_abstractions.dart';
import './account_directory.dart';

class AccountDirectoryLinkableWrapper implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The items property
    Iterable<AccountDirectory>? items;
    /// Instantiates a new [AccountDirectoryLinkableWrapper] and sets the default values.
    AccountDirectoryLinkableWrapper() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static AccountDirectoryLinkableWrapper createFromDiscriminatorValue(ParseNode parseNode) {
        return AccountDirectoryLinkableWrapper();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = {};
        deserializerMap['items'] = (node) => items = node.getCollectionOfObjectValues<AccountDirectory>(AccountDirectory.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        writer.writeCollectionOfObjectValues<AccountDirectory>('items', items);
        writer.writeAdditionalData(additionalData);
    }
}
