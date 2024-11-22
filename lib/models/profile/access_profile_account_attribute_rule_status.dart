// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../non_linkable.dart';
import './access_profile_computed_attribute.dart';
import './access_profile_computed_attribute_status.dart';

/// auto generated
class AccessProfileAccountAttributeRuleStatus extends NonLinkable implements Parsable {
    ///  The attribute property
    AccessProfileComputedAttribute? attribute;
    ///  The context property
    String? context;
    ///  The currentValue property
    String? currentValue;
    ///  The status property
    AccessProfileComputedAttributeStatus? status;
    /// Instantiates a new [AccessProfileAccountAttributeRuleStatus] and sets the default values.
    AccessProfileAccountAttributeRuleStatus() : super() {
        type_ = 'profile.AccessProfileAccountAttributeRuleStatus';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static AccessProfileAccountAttributeRuleStatus createFromDiscriminatorValue(ParseNode parseNode) {
        return AccessProfileAccountAttributeRuleStatus();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['attribute'] = (node) => attribute = node.getEnumValue<AccessProfileComputedAttribute>((stringValue) => AccessProfileComputedAttribute.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['context'] = (node) => context = node.getStringValue();
        deserializerMap['currentValue'] = (node) => currentValue = node.getStringValue();
        deserializerMap['status'] = (node) => status = node.getEnumValue<AccessProfileComputedAttributeStatus>((stringValue) => AccessProfileComputedAttributeStatus.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeEnumValue<AccessProfileComputedAttribute>('attribute', attribute, (e) => e?.value);
        writer.writeStringValue('context', context);
        writer.writeStringValue('currentValue', currentValue);
        writer.writeEnumValue<AccessProfileComputedAttributeStatus>('status', status, (e) => e?.value);
    }
}
