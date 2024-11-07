import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../non_linkable.dart';
import './item_marker_level.dart';
import './item_marker_parameters.dart';
import './item_marker_type.dart';

class ItemMarker extends NonLinkable implements Parsable {
    ///  The type property
    ItemMarkerType? itemMarkerType;
    ///  The level property
    ItemMarkerLevel? level;
    ///  The parameters property
    ItemMarkerParameters? parameters;
    /// Instantiates a new [ItemMarker] and sets the default values.
    ItemMarker() : super() {
        typeEscaped = 'mark.ItemMarker';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static ItemMarker createFromDiscriminatorValue(ParseNode parseNode) {
        return ItemMarker();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['type'] = (node) => itemMarkerType = node.getEnumValue<ItemMarkerType>((stringValue) => ItemMarkerType.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['level'] = (node) => level = node.getEnumValue<ItemMarkerLevel>((stringValue) => ItemMarkerLevel.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['parameters'] = (node) => parameters = node.getObjectValue<ItemMarkerParameters>(ItemMarkerParameters.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeEnumValue<ItemMarkerType>('type', itemMarkerType, (e) => e?.value);
        writer.writeEnumValue<ItemMarkerLevel>('level', level, (e) => e?.value);
    }
}
