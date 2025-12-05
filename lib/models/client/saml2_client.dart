// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../misc/attribute_customization.dart';
import './client_application.dart';
import './subject_format.dart';

/// auto generated
class Saml2Client extends ClientApplication implements Parsable {
    ///  The attributes property
    Iterable<AttributeCustomization>? attributes;
    ///  The metadata property
    String? metadata;
    ///  The metadataUrl property
    String? metadataUrl;
    ///  The subjectFormat property
    SubjectFormat? subjectFormat;
    /// Instantiates a new [Saml2Client] and sets the default values.
    Saml2Client() : super() {
        type_ = 'client.Saml2Client';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static Saml2Client createFromDiscriminatorValue(ParseNode parseNode) {
        return Saml2Client();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['attributes'] = (node) => attributes = node.getCollectionOfObjectValues<AttributeCustomization>(AttributeCustomization.createFromDiscriminatorValue);
        deserializerMap['metadata'] = (node) => metadata = node.getStringValue();
        deserializerMap['metadataUrl'] = (node) => metadataUrl = node.getStringValue();
        deserializerMap['subjectFormat'] = (node) => subjectFormat = node.getEnumValue<SubjectFormat>((stringValue) => SubjectFormat.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeCollectionOfObjectValues<AttributeCustomization>('attributes', attributes);
        writer.writeStringValue('metadata', metadata);
        writer.writeStringValue('metadataUrl', metadataUrl);
        writer.writeEnumValue<SubjectFormat>('subjectFormat', subjectFormat, (e) => e?.value);
    }
}
