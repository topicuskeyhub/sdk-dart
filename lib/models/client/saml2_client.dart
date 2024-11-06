import 'package:kiota_abstractions/kiota_abstractions.dart';
import './client_application.dart';
import './saml2_client_attributes.dart';
import './subject_format.dart';

class Saml2Client extends ClientApplication implements Parsable {
    ///  The attributes property
    Saml2ClientAttributes? attributes;
    ///  The metadata property
    String? metadata;
    ///  The metadataUrl property
    String? metadataUrl;
    ///  The subjectFormat property
    SubjectFormat? subjectFormat;
    /// Instantiates a new [Saml2Client] and sets the default values.
    Saml2Client() : super() {
        typeEscaped = 'client.Saml2Client';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static Saml2Client createFromDiscriminatorValue(ParseNode parseNode) {
        return Saml2Client();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['attributes'] = (node) => attributes = node.getObjectValue<Saml2ClientAttributes>(Saml2ClientAttributes.createFromDiscriminatorValue);
        deserializerMap['metadata'] = (node) => metadata = node.getStringValue();
        deserializerMap['metadataUrl'] = (node) => metadataUrl = node.getStringValue();
        deserializerMap['subjectFormat'] = (node) => subjectFormat = node.getEnumValue<SubjectFormat>((stringValue) => SubjectFormat.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<Saml2ClientAttributes>('attributes', attributes);
        writer.writeStringValue('metadata', metadata);
        writer.writeStringValue('metadataUrl', metadataUrl);
        writer.writeEnumValue<SubjectFormat>('subjectFormat', subjectFormat, (e) => e?.value);
    }
}
