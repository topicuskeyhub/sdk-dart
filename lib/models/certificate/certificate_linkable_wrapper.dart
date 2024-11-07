import 'package:kiota_abstractions/kiota_abstractions.dart';
import './certificate.dart';

class CertificateLinkableWrapper implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The items property
    Iterable<Certificate>? items;
    /// Instantiates a new [CertificateLinkableWrapper] and sets the default values.
    CertificateLinkableWrapper() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static CertificateLinkableWrapper createFromDiscriminatorValue(ParseNode parseNode) {
        return CertificateLinkableWrapper();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = {};
        deserializerMap['items'] = (node) => items = node.getCollectionOfObjectValues<Certificate>(Certificate.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        writer.writeCollectionOfObjectValues<Certificate>('items', items);
        writer.writeAdditionalData(additionalData);
    }
}
