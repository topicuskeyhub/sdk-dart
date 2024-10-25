import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../audit_info.dart';
import './organizational_unit_primer_linkable_wrapper.dart';
import './organizational_unit_settings.dart';

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
    /// <param name="parseNode">parseNode</param>
     static OrganizationalUnitAdditionalObjects createFromDiscriminatorValue(ParseNode parseNode) {
        return OrganizationalUnitAdditionalObjects();
    }
    /// The deserialization information for the current model
    @override
     Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = {};
        deserializerMap['audit'] = (node) => audit = node.getObjectValue<AuditInfo>(AuditInfo.createFromDiscriminatorValue);
        deserializerMap['createAsParentOf'] = (node) => createAsParentOf = node.getObjectValue<OrganizationalUnitPrimerLinkableWrapper>(OrganizationalUnitPrimerLinkableWrapper.createFromDiscriminatorValue);
        deserializerMap['settings'] = (node) => settings = node.getObjectValue<OrganizationalUnitSettings>(OrganizationalUnitSettings.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
     void serialize(SerializationWriter writer) {
        writer.writeObjectValue<AuditInfo>('audit', audit);
        writer.writeObjectValue<OrganizationalUnitPrimerLinkableWrapper>('createAsParentOf', createAsParentOf);
        writer.writeObjectValue<OrganizationalUnitSettings>('settings', settings);
        writer.writeAdditionalData(additionalData);
    }
}
