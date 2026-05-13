// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './non_linkable.dart';

/// auto generated
class NonLinkableWrapper implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The nonLinkableItems property
    Iterable<NonLinkable>? nonLinkableItems;
    /// Instantiates a new [NonLinkableWrapper] and sets the default values.
    NonLinkableWrapper() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static NonLinkableWrapper createFromDiscriminatorValue(ParseNode parseNode) {
        return NonLinkableWrapper();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['nonLinkableItems'] = (node) => nonLinkableItems = node.getCollectionOfObjectValues<NonLinkable>(NonLinkable.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeCollectionOfObjectValues<NonLinkable>('nonLinkableItems', nonLinkableItems);
        writer.writeAdditionalData(additionalData);
    }
}
