import 'package:kiota_abstractions/kiota_abstractions.dart';
import './service_account_primer.dart';

class ServiceAccountPrimerLinkableWrapper implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The items property
    Iterable<ServiceAccountPrimer>? items;
    /// Instantiates a new [ServiceAccountPrimerLinkableWrapper] and sets the default values.
    ServiceAccountPrimerLinkableWrapper() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static ServiceAccountPrimerLinkableWrapper createFromDiscriminatorValue(ParseNode parseNode) {
        return ServiceAccountPrimerLinkableWrapper();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = {};
        deserializerMap['items'] = (node) => items = node.getCollectionOfObjectValues<ServiceAccountPrimer>(ServiceAccountPrimer.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        writer.writeCollectionOfObjectValues<ServiceAccountPrimer>('items', items);
        writer.writeAdditionalData(additionalData);
    }
}
