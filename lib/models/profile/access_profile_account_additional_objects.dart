// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../audit_info.dart';
import '../non_linkable_wrapper.dart';
import './access_profile_account_prediction.dart';

/// auto generated
class AccessProfileAccountAdditionalObjects implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The attributeSummaries property
    NonLinkableWrapper? attributeSummaries;
    ///  The audit property
    AuditInfo? audit;
    ///  The prediction property
    AccessProfileAccountPrediction? prediction;
    /// Instantiates a new [AccessProfileAccountAdditionalObjects] and sets the default values.
    AccessProfileAccountAdditionalObjects() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static AccessProfileAccountAdditionalObjects createFromDiscriminatorValue(ParseNode parseNode) {
        return AccessProfileAccountAdditionalObjects();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['attributeSummaries'] = (node) => attributeSummaries = node.getObjectValue<NonLinkableWrapper>(NonLinkableWrapper.createFromDiscriminatorValue);
        deserializerMap['audit'] = (node) => audit = node.getObjectValue<AuditInfo>(AuditInfo.createFromDiscriminatorValue);
        deserializerMap['prediction'] = (node) => prediction = node.getObjectValue<AccessProfileAccountPrediction>(AccessProfileAccountPrediction.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeObjectValue<NonLinkableWrapper>('attributeSummaries', attributeSummaries);
        writer.writeObjectValue<AuditInfo>('audit', audit);
        writer.writeObjectValue<AccessProfileAccountPrediction>('prediction', prediction);
        writer.writeAdditionalData(additionalData);
    }
}
