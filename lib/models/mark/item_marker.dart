// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../non_linkable.dart';
import './item_marker_level.dart';
import './item_marker_parameters.dart';
import './item_marker_type.dart';

/// auto generated
class ItemMarker extends NonLinkable implements Parsable {
    ///  The type property
    ItemMarkerType? itemMarkerType;
    ///  The level property
    ItemMarkerLevel? level;
    ///  The parameters property
    ItemMarkerParameters? parameters;
    /// Instantiates a new [ItemMarker] and sets the default values.
    ItemMarker() : super() {
        type_ = 'mark.ItemMarker';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ItemMarker createFromDiscriminatorValue(ParseNode parseNode) {
        return ItemMarker();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['ItemMarkerType'] = (node) => itemMarkerType = node.getEnumValue<ItemMarkerType>((stringValue) => ItemMarkerType.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['level'] = (node) => level = node.getEnumValue<ItemMarkerLevel>((stringValue) => ItemMarkerLevel.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['parameters'] = (node) => parameters = node.getObjectValue<ItemMarkerParameters>(ItemMarkerParameters.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeEnumValue<ItemMarkerType>('ItemMarkerType', itemMarkerType, (e) => e?.value);
        writer.writeEnumValue<ItemMarkerLevel>('level', level, (e) => e?.value);
    }
}
