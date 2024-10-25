import 'package:kiota_abstractions/kiota_abstractions.dart';
import './service_account_group.dart';

class ServiceAccountGroupLinkableWrapper implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The items property
    Iterable<ServiceAccountGroup>? items;
    /// Instantiates a new [ServiceAccountGroupLinkableWrapper] and sets the default values.
     ServiceAccountGroupLinkableWrapper() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
     static ServiceAccountGroupLinkableWrapper createFromDiscriminatorValue(ParseNode parseNode) {
        return ServiceAccountGroupLinkableWrapper();
    }
    /// The deserialization information for the current model
    @override
     Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = {};
        deserializerMap['items'] = (node) => items = node.getCollectionOfObjectValues<ServiceAccountGroup>(ServiceAccountGroup.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
     void serialize(SerializationWriter writer) {
        writer.writeCollectionOfObjectValues<ServiceAccountGroup>('items', items);
        writer.writeAdditionalData(additionalData);
    }
}
