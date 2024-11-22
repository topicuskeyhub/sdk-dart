// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../audit_info.dart';
import './accept_modification_request_parameters.dart';
import './password_reset_request_status.dart';

/// auto generated
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
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ModificationRequestAdditionalObjects createFromDiscriminatorValue(ParseNode parseNode) {
        return ModificationRequestAdditionalObjects();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['acceptParams'] = (node) => acceptParams = node.getObjectValue<AcceptModificationRequestParameters>(AcceptModificationRequestParameters.createFromDiscriminatorValue);
        deserializerMap['audit'] = (node) => audit = node.getObjectValue<AuditInfo>(AuditInfo.createFromDiscriminatorValue);
        deserializerMap['resetStatus'] = (node) => resetStatus = node.getObjectValue<PasswordResetRequestStatus>(PasswordResetRequestStatus.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeObjectValue<AcceptModificationRequestParameters>('acceptParams', acceptParams);
        writer.writeObjectValue<AuditInfo>('audit', audit);
        writer.writeObjectValue<PasswordResetRequestStatus>('resetStatus', resetStatus);
        writer.writeAdditionalData(additionalData);
    }
}
