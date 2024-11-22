// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../non_linkable.dart';
import './item_marker.dart';

/// auto generated
class ItemMarkers extends NonLinkable implements Parsable {
    ///  The markers property
    Iterable<ItemMarker>? markers;
    /// Instantiates a new [ItemMarkers] and sets the default values.
    ItemMarkers() : super() {
        type_ = 'mark.ItemMarkers';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ItemMarkers createFromDiscriminatorValue(ParseNode parseNode) {
        return ItemMarkers();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['markers'] = (node) => markers = node.getCollectionOfObjectValues<ItemMarker>(ItemMarker.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeCollectionOfObjectValues<ItemMarker>('markers', markers);
    }
}
