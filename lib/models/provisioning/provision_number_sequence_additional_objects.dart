import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../audit_info.dart';
import './provisioned_system_primer_linkable_wrapper.dart';

class ProvisionNumberSequenceAdditionalObjects implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The audit property
    AuditInfo? audit;
    ///  The systems property
    ProvisionedSystemPrimerLinkableWrapper? systems;
    /// Instantiates a new [ProvisionNumberSequenceAdditionalObjects] and sets the default values.
     ProvisionNumberSequenceAdditionalObjects() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
     static ProvisionNumberSequenceAdditionalObjects createFromDiscriminatorValue(ParseNode parseNode) {
        return ProvisionNumberSequenceAdditionalObjects();
    }
    /// The deserialization information for the current model
    @override
     Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = {};
        deserializerMap['audit'] = (node) => audit = node.getObjectValue<AuditInfo>(AuditInfo.createFromDiscriminatorValue);
        deserializerMap['systems'] = (node) => systems = node.getObjectValue<ProvisionedSystemPrimerLinkableWrapper>(ProvisionedSystemPrimerLinkableWrapper.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
     void serialize(SerializationWriter writer) {
        writer.writeObjectValue<AuditInfo>('audit', audit);
        writer.writeObjectValue<ProvisionedSystemPrimerLinkableWrapper>('systems', systems);
        writer.writeAdditionalData(additionalData);
    }
}
