// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../audit_info.dart';
import './organizational_unit_primer_linkable_wrapper.dart';
import './organizational_unit_settings.dart';

/// auto generated
class OrganizationalUnitAdditionalObjects implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The audit property
    AuditInfo? audit;
    ///  The createAsParentOf property
    OrganizationalUnitPrimerLinkableWrapper? createAsParentOf;
    ///  The settings property
    OrganizationalUnitSettings? settings;
    /// Instantiates a new [OrganizationalUnitAdditionalObjects] and sets the default values.
    OrganizationalUnitAdditionalObjects() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static OrganizationalUnitAdditionalObjects createFromDiscriminatorValue(ParseNode parseNode) {
        return OrganizationalUnitAdditionalObjects();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['audit'] = (node) => audit = node.getObjectValue<AuditInfo>(AuditInfo.createFromDiscriminatorValue);
        deserializerMap['createAsParentOf'] = (node) => createAsParentOf = node.getObjectValue<OrganizationalUnitPrimerLinkableWrapper>(OrganizationalUnitPrimerLinkableWrapper.createFromDiscriminatorValue);
        deserializerMap['settings'] = (node) => settings = node.getObjectValue<OrganizationalUnitSettings>(OrganizationalUnitSettings.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeObjectValue<AuditInfo>('audit', audit);
        writer.writeObjectValue<OrganizationalUnitPrimerLinkableWrapper>('createAsParentOf', createAsParentOf);
        writer.writeObjectValue<OrganizationalUnitSettings>('settings', settings);
        writer.writeAdditionalData(additionalData);
    }
}
