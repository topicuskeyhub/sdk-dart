import 'package:kiota_abstractions/kiota_abstractions.dart';
import './account_directory_summary.dart';

class AccountDirectorySummaryLinkableWrapper implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The items property
    Iterable<AccountDirectorySummary>? items;
    /// Instantiates a new [AccountDirectorySummaryLinkableWrapper] and sets the default values.
    AccountDirectorySummaryLinkableWrapper() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static AccountDirectorySummaryLinkableWrapper createFromDiscriminatorValue(ParseNode parseNode) {
        return AccountDirectorySummaryLinkableWrapper();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = {};
        deserializerMap['items'] = (node) => items = node.getCollectionOfObjectValues<AccountDirectorySummary>(AccountDirectorySummary.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        writer.writeCollectionOfObjectValues<AccountDirectorySummary>('items', items);
        writer.writeAdditionalData(additionalData);
    }
}
