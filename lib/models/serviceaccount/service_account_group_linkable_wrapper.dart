// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './service_account_group.dart';

/// auto generated
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
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ServiceAccountGroupLinkableWrapper createFromDiscriminatorValue(ParseNode parseNode) {
        return ServiceAccountGroupLinkableWrapper();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['items'] = (node) => items = node.getCollectionOfObjectValues<ServiceAccountGroup>(ServiceAccountGroup.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeCollectionOfObjectValues<ServiceAccountGroup>('items', items);
        writer.writeAdditionalData(additionalData);
    }
}
