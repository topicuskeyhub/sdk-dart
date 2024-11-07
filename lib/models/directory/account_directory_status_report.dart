import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../non_linkable.dart';
import './account_directory_status.dart';

class AccountDirectoryStatusReport extends NonLinkable implements Parsable {
    ///  The accounts property
    int? accounts;
    ///  The reason property
    String? reason;
    ///  The status property
    AccountDirectoryStatus? status;
    /// Instantiates a new [AccountDirectoryStatusReport] and sets the default values.
    AccountDirectoryStatusReport() : super() {
        typeEscaped = 'directory.AccountDirectoryStatusReport';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static AccountDirectoryStatusReport createFromDiscriminatorValue(ParseNode parseNode) {
        return AccountDirectoryStatusReport();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['accounts'] = (node) => accounts = node.getIntValue();
        deserializerMap['reason'] = (node) => reason = node.getStringValue();
        deserializerMap['status'] = (node) => status = node.getEnumValue<AccountDirectoryStatus>((stringValue) => AccountDirectoryStatus.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeEnumValue<AccountDirectoryStatus>('status', status, (e) => e?.value);
    }
}
