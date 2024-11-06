import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../audit_info.dart';
import './accept_modification_request_parameters.dart';
import './password_reset_request_status.dart';

class ModificationRequestAdditionalObjects implements AdditionalDataHolder, Parsable {
    ///  The acceptParams property
    AcceptModificationRequestParameters? acceptParams;
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The audit property
    AuditInfo? audit;
    ///  The resetStatus property
    PasswordResetRequestStatus? resetStatus;
    /// Instantiates a new [ModificationRequestAdditionalObjects] and sets the default values.
    ModificationRequestAdditionalObjects() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static ModificationRequestAdditionalObjects createFromDiscriminatorValue(ParseNode parseNode) {
        return ModificationRequestAdditionalObjects();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = {};
        deserializerMap['acceptParams'] = (node) => acceptParams = node.getObjectValue<AcceptModificationRequestParameters>(AcceptModificationRequestParameters.createFromDiscriminatorValue);
        deserializerMap['audit'] = (node) => audit = node.getObjectValue<AuditInfo>(AuditInfo.createFromDiscriminatorValue);
        deserializerMap['resetStatus'] = (node) => resetStatus = node.getObjectValue<PasswordResetRequestStatus>(PasswordResetRequestStatus.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        writer.writeObjectValue<AcceptModificationRequestParameters>('acceptParams', acceptParams);
        writer.writeObjectValue<AuditInfo>('audit', audit);
        writer.writeObjectValue<PasswordResetRequestStatus>('resetStatus', resetStatus);
        writer.writeAdditionalData(additionalData);
    }
}
