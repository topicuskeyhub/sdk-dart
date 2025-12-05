// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../audit_info.dart';
import '../generate_secret.dart';
import '../secret.dart';
import './service_account_group_linkable_wrapper.dart';
import './service_account_supported_features.dart';

/// auto generated
class ServiceAccountAdditionalObjects implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The audit property
    AuditInfo? audit;
    ///  The generateSecret property
    GenerateSecret? generateSecret;
    ///  The groups property
    ServiceAccountGroupLinkableWrapper? groups;
    ///  The secret property
    Secret? secret;
    ///  The supportedFeatures property
    ServiceAccountSupportedFeatures? supportedFeatures;
    /// Instantiates a new [ServiceAccountAdditionalObjects] and sets the default values.
    ServiceAccountAdditionalObjects() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ServiceAccountAdditionalObjects createFromDiscriminatorValue(ParseNode parseNode) {
        return ServiceAccountAdditionalObjects();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['audit'] = (node) => audit = node.getObjectValue<AuditInfo>(AuditInfo.createFromDiscriminatorValue);
        deserializerMap['generateSecret'] = (node) => generateSecret = node.getObjectValue<GenerateSecret>(GenerateSecret.createFromDiscriminatorValue);
        deserializerMap['groups'] = (node) => groups = node.getObjectValue<ServiceAccountGroupLinkableWrapper>(ServiceAccountGroupLinkableWrapper.createFromDiscriminatorValue);
        deserializerMap['secret'] = (node) => secret = node.getObjectValue<Secret>(Secret.createFromDiscriminatorValue);
        deserializerMap['supportedFeatures'] = (node) => supportedFeatures = node.getObjectValue<ServiceAccountSupportedFeatures>(ServiceAccountSupportedFeatures.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeObjectValue<AuditInfo>('audit', audit);
        writer.writeObjectValue<GenerateSecret>('generateSecret', generateSecret);
        writer.writeObjectValue<ServiceAccountGroupLinkableWrapper>('groups', groups);
        writer.writeObjectValue<Secret>('secret', secret);
        writer.writeObjectValue<ServiceAccountSupportedFeatures>('supportedFeatures', supportedFeatures);
        writer.writeAdditionalData(additionalData);
    }
}
