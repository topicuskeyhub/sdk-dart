import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../non_linkable.dart';
import './access_profile_computed_attribute.dart';
import './access_profile_computed_attribute_status.dart';

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
        typeEscaped = 'profile.AccessProfileAccountAttributeRuleStatus';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static AccessProfileAccountAttributeRuleStatus createFromDiscriminatorValue(ParseNode parseNode) {
        return AccessProfileAccountAttributeRuleStatus();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['attribute'] = (node) => attribute = node.getEnumValue<AccessProfileComputedAttribute>((stringValue) => AccessProfileComputedAttribute.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['context'] = (node) => context = node.getStringValue();
        deserializerMap['currentValue'] = (node) => currentValue = node.getStringValue();
        deserializerMap['status'] = (node) => status = node.getEnumValue<AccessProfileComputedAttributeStatus>((stringValue) => AccessProfileComputedAttributeStatus.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeEnumValue<AccessProfileComputedAttribute>('attribute', attribute, (e) => e?.value);
        writer.writeStringValue('context', context);
        writer.writeStringValue('currentValue', currentValue);
        writer.writeEnumValue<AccessProfileComputedAttributeStatus>('status', status, (e) => e?.value);
    }
}
