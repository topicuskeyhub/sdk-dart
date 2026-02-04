// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../auth/account_primer.dart';
import '../linkable.dart';
import './imported_row_additional_objects.dart';
import './imported_row_status.dart';

/// auto generated
class ImportedRow extends Linkable implements Parsable {
    ///  The additionalObjects property
    ImportedRowAdditionalObjects? additionalObjects;
    ///  The cells property
    Iterable<String>? cells;
    ///  The index property
    int? index_;
    ///  The matchedAccount property
    AccountPrimer? matchedAccount;
    ///  The status property
    ImportedRowStatus? status;
    /// Instantiates a new [ImportedRow] and sets the default values.
    ImportedRow() : super() {
        type_ = 'identitysource.ImportedRow';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ImportedRow createFromDiscriminatorValue(ParseNode parseNode) {
        return ImportedRow();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['additionalObjects'] = (node) => additionalObjects = node.getObjectValue<ImportedRowAdditionalObjects>(ImportedRowAdditionalObjects.createFromDiscriminatorValue);
        deserializerMap['cells'] = (node) => cells = node.getCollectionOfPrimitiveValues<String>();
        deserializerMap['index'] = (node) => index_ = node.getIntValue();
        deserializerMap['matchedAccount'] = (node) => matchedAccount = node.getObjectValue<AccountPrimer>(AccountPrimer.createFromDiscriminatorValue);
        deserializerMap['status'] = (node) => status = node.getEnumValue<ImportedRowStatus>((stringValue) => ImportedRowStatus.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<ImportedRowAdditionalObjects>('additionalObjects', additionalObjects);
        writer.writeCollectionOfPrimitiveValues<String?>('cells', cells);
        writer.writeIntValue('index', index_);
        writer.writeObjectValue<AccountPrimer>('matchedAccount', matchedAccount);
        writer.writeEnumValue<ImportedRowStatus>('status', status, (e) => e?.value);
    }
}
