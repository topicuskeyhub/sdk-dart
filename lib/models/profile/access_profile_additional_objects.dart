import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../audit_info.dart';
import './access_profile_account_linkable_wrapper.dart';
import './access_profile_provisioning_linkable_wrapper.dart';

class AccessProfileAdditionalObjects implements AdditionalDataHolder, Parsable {
    ///  The accounts property
    AccessProfileAccountLinkableWrapper? accounts;
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
    /// <param name="parseNode">parseNode</param>
     static AccessProfileAdditionalObjects createFromDiscriminatorValue(ParseNode parseNode) {
        return AccessProfileAdditionalObjects();
    }
    /// The deserialization information for the current model
    @override
     Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = {};
        deserializerMap['accounts'] = (node) => accounts = node.getObjectValue<AccessProfileAccountLinkableWrapper>(AccessProfileAccountLinkableWrapper.createFromDiscriminatorValue);
        deserializerMap['audit'] = (node) => audit = node.getObjectValue<AuditInfo>(AuditInfo.createFromDiscriminatorValue);
        deserializerMap['provisioning'] = (node) => provisioning = node.getObjectValue<AccessProfileProvisioningLinkableWrapper>(AccessProfileProvisioningLinkableWrapper.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
     void serialize(SerializationWriter writer) {
        writer.writeObjectValue<AccessProfileAccountLinkableWrapper>('accounts', accounts);
        writer.writeObjectValue<AuditInfo>('audit', audit);
        writer.writeObjectValue<AccessProfileProvisioningLinkableWrapper>('provisioning', provisioning);
        writer.writeAdditionalData(additionalData);
    }
}
