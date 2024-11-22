// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../audit_info.dart';
import './access_profile_account_with_attributes_linkable_wrapper.dart';
import './access_profile_provisioning_linkable_wrapper.dart';

/// auto generated
class AccessProfileAdditionalObjects implements AdditionalDataHolder, Parsable {
    ///  The accountsWithAttributes property
    AccessProfileAccountWithAttributesLinkableWrapper? accountsWithAttributes;
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The audit property
    AuditInfo? audit;
    ///  The provisioning property
    AccessProfileProvisioningLinkableWrapper? provisioning;
    /// Instantiates a new [AccessProfileAdditionalObjects] and sets the default values.
    AccessProfileAdditionalObjects() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static AccessProfileAdditionalObjects createFromDiscriminatorValue(ParseNode parseNode) {
        return AccessProfileAdditionalObjects();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['accountsWithAttributes'] = (node) => accountsWithAttributes = node.getObjectValue<AccessProfileAccountWithAttributesLinkableWrapper>(AccessProfileAccountWithAttributesLinkableWrapper.createFromDiscriminatorValue);
        deserializerMap['audit'] = (node) => audit = node.getObjectValue<AuditInfo>(AuditInfo.createFromDiscriminatorValue);
        deserializerMap['provisioning'] = (node) => provisioning = node.getObjectValue<AccessProfileProvisioningLinkableWrapper>(AccessProfileProvisioningLinkableWrapper.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeObjectValue<AccessProfileAccountWithAttributesLinkableWrapper>('accountsWithAttributes', accountsWithAttributes);
        writer.writeObjectValue<AuditInfo>('audit', audit);
        writer.writeObjectValue<AccessProfileProvisioningLinkableWrapper>('provisioning', provisioning);
        writer.writeAdditionalData(additionalData);
    }
}
