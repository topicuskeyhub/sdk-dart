// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../misc/attribute_customization.dart';
import './access_profile_lifecycle_action.dart';

/// auto generated
class AccessProfileMailLifecycleAction extends AccessProfileLifecycleAction implements Parsable {
    ///  The mailBodyTemplate property
    String? mailBodyTemplate;
    ///  The mailSubjectTemplate property
    String? mailSubjectTemplate;
    ///  The recipients property
    Iterable<AttributeCustomization>? recipients;
    /// Instantiates a new [AccessProfileMailLifecycleAction] and sets the default values.
    AccessProfileMailLifecycleAction() : super() {
        type_ = 'profile.AccessProfileMailLifecycleAction';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static AccessProfileMailLifecycleAction createFromDiscriminatorValue(ParseNode parseNode) {
        return AccessProfileMailLifecycleAction();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['mailBodyTemplate'] = (node) => mailBodyTemplate = node.getStringValue();
        deserializerMap['mailSubjectTemplate'] = (node) => mailSubjectTemplate = node.getStringValue();
        deserializerMap['recipients'] = (node) => recipients = node.getCollectionOfObjectValues<AttributeCustomization>(AttributeCustomization.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeStringValue('mailBodyTemplate', mailBodyTemplate);
        writer.writeStringValue('mailSubjectTemplate', mailSubjectTemplate);
        writer.writeCollectionOfObjectValues<AttributeCustomization>('recipients', recipients);
    }
}
