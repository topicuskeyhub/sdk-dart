// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../audit_info.dart';
import './provisioned_system_primer_linkable_wrapper.dart';

/// auto generated
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
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ProvisionNumberSequenceAdditionalObjects createFromDiscriminatorValue(ParseNode parseNode) {
        return ProvisionNumberSequenceAdditionalObjects();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['audit'] = (node) => audit = node.getObjectValue<AuditInfo>(AuditInfo.createFromDiscriminatorValue);
        deserializerMap['systems'] = (node) => systems = node.getObjectValue<ProvisionedSystemPrimerLinkableWrapper>(ProvisionedSystemPrimerLinkableWrapper.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeObjectValue<AuditInfo>('audit', audit);
        writer.writeObjectValue<ProvisionedSystemPrimerLinkableWrapper>('systems', systems);
        writer.writeAdditionalData(additionalData);
    }
}
