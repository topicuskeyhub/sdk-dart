import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../non_linkable.dart';
import './item_marker.dart';

class ItemMarkers extends NonLinkable implements Parsable {
    ///  The markers property
    Iterable<ItemMarker>? markers;
    /// Instantiates a new [ItemMarkers] and sets the default values.
     ItemMarkers() : super() {
        typeEscaped = 'mark.ItemMarkers';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
     static ItemMarkers createFromDiscriminatorValue(ParseNode parseNode) {
        return ItemMarkers();
    }
    /// The deserialization information for the current model
    @override
     Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['markers'] = (node) => markers = node.getCollectionOfObjectValues<ItemMarker>(ItemMarker.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
     void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeCollectionOfObjectValues<ItemMarker>('markers', markers);
    }
}
