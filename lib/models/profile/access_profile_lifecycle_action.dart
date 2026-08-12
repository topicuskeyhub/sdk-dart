// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../linkable.dart';
import './access_profile_lifecycle_action_additional_objects.dart';
import './access_profile_lifecycle_action_offset.dart';
import './access_profile_lifecycle_action_type.dart';
import './access_profile_lifecycle_anchor.dart';
import './access_profile_mail_lifecycle_action.dart';

/// auto generated
class AccessProfileLifecycleAction extends Linkable implements Parsable {
    ///  The type property
    AccessProfileLifecycleActionType? accessProfileLifecycleActionType;
    ///  The additionalObjects property
    AccessProfileLifecycleActionAdditionalObjects? additionalObjects;
    ///  The anchor property
    AccessProfileLifecycleAnchor? anchor;
    ///  The name property
    String? name;
    ///  The offset property
    AccessProfileLifecycleActionOffset? offset;
    /// Instantiates a new [AccessProfileLifecycleAction] and sets the default values.
    AccessProfileLifecycleAction() : super() {
        type_ = 'profile.AccessProfileLifecycleAction';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static AccessProfileLifecycleAction createFromDiscriminatorValue(ParseNode parseNode) {
        var mappingValue = parseNode.getChildNode('\$type')?.getStringValue();
        return switch(mappingValue) {
            'profile.AccessProfileMailLifecycleAction' => AccessProfileMailLifecycleAction(),
            _ => AccessProfileLifecycleAction(),
        };
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['type'] = (node) => accessProfileLifecycleActionType = node.getEnumValue<AccessProfileLifecycleActionType>((stringValue) => AccessProfileLifecycleActionType.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['additionalObjects'] = (node) => additionalObjects = node.getObjectValue<AccessProfileLifecycleActionAdditionalObjects>(AccessProfileLifecycleActionAdditionalObjects.createFromDiscriminatorValue);
        deserializerMap['anchor'] = (node) => anchor = node.getEnumValue<AccessProfileLifecycleAnchor>((stringValue) => AccessProfileLifecycleAnchor.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['name'] = (node) => name = node.getStringValue();
        deserializerMap['offset'] = (node) => offset = node.getObjectValue<AccessProfileLifecycleActionOffset>(AccessProfileLifecycleActionOffset.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeEnumValue<AccessProfileLifecycleActionType>('type', accessProfileLifecycleActionType, (e) => e?.value);
        writer.writeObjectValue<AccessProfileLifecycleActionAdditionalObjects>('additionalObjects', additionalObjects);
        writer.writeEnumValue<AccessProfileLifecycleAnchor>('anchor', anchor, (e) => e?.value);
        writer.writeStringValue('name', name);
        writer.writeObjectValue<AccessProfileLifecycleActionOffset>('offset', offset);
    }
}
