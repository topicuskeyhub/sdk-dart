// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../non_linkable.dart';
import './account_directory_status.dart';

/// auto generated
class AccountDirectoryStatusReport extends NonLinkable implements Parsable {
    ///  The accounts property
    int? accounts;
    ///  The reason property
    String? reason;
    ///  The status property
    AccountDirectoryStatus? status;
    /// Instantiates a new [AccountDirectoryStatusReport] and sets the default values.
    AccountDirectoryStatusReport() : super() {
        type_ = 'directory.AccountDirectoryStatusReport';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static AccountDirectoryStatusReport createFromDiscriminatorValue(ParseNode parseNode) {
        return AccountDirectoryStatusReport();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['accounts'] = (node) => accounts = node.getIntValue();
        deserializerMap['reason'] = (node) => reason = node.getStringValue();
        deserializerMap['status'] = (node) => status = node.getEnumValue<AccountDirectoryStatus>((stringValue) => AccountDirectoryStatus.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeEnumValue<AccountDirectoryStatus>('status', status, (e) => e?.value);
    }
}
