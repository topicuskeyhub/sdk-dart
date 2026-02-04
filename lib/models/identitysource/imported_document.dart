// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../linkable.dart';
import './imported_document_additional_objects.dart';

/// auto generated
class ImportedDocument extends Linkable implements Parsable {
    ///  The additionalObjects property
    ImportedDocumentAdditionalObjects? additionalObjects;
    ///  The createdAt property
    DateTime? createdAt;
    /// Instantiates a new [ImportedDocument] and sets the default values.
    ImportedDocument() : super() {
        type_ = 'identitysource.ImportedDocument';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ImportedDocument createFromDiscriminatorValue(ParseNode parseNode) {
        return ImportedDocument();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['additionalObjects'] = (node) => additionalObjects = node.getObjectValue<ImportedDocumentAdditionalObjects>(ImportedDocumentAdditionalObjects.createFromDiscriminatorValue);
        deserializerMap['createdAt'] = (node) => createdAt = node.getDateTimeValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<ImportedDocumentAdditionalObjects>('additionalObjects', additionalObjects);
    }
}
