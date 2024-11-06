import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../linkable.dart';
import './account_directory_status_report.dart';
import './account_directory_type.dart';

class AccountDirectorySummary extends Linkable implements Parsable {
    ///  The type property
    AccountDirectoryType? accountDirectorySummaryType;
    ///  The domainRestriction property
    String? domainRestriction;
    ///  The fullyResolvedIssuer property
    String? fullyResolvedIssuer;
    ///  The name property
    String? name;
    ///  The status property
    AccountDirectoryStatusReport? status;
    ///  The usernameCustomizable property
    bool? usernameCustomizable;
    /// Instantiates a new [AccountDirectorySummary] and sets the default values.
    AccountDirectorySummary() : super() {
        typeEscaped = 'directory.AccountDirectorySummary';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
    static AccountDirectorySummary createFromDiscriminatorValue(ParseNode parseNode) {
        return AccountDirectorySummary();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['type'] = (node) => accountDirectorySummaryType = node.getEnumValue<AccountDirectoryType>((stringValue) => AccountDirectoryType.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['domainRestriction'] = (node) => domainRestriction = node.getStringValue();
        deserializerMap['fullyResolvedIssuer'] = (node) => fullyResolvedIssuer = node.getStringValue();
        deserializerMap['name'] = (node) => name = node.getStringValue();
        deserializerMap['status'] = (node) => status = node.getObjectValue<AccountDirectoryStatusReport>(AccountDirectoryStatusReport.createFromDiscriminatorValue);
        deserializerMap['usernameCustomizable'] = (node) => usernameCustomizable = node.getBoolValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeEnumValue<AccountDirectoryType>('type', accountDirectorySummaryType, (e) => e?.value);
        writer.writeStringValue('domainRestriction', domainRestriction);
        writer.writeStringValue('fullyResolvedIssuer', fullyResolvedIssuer);
        writer.writeStringValue('name', name);
        writer.writeObjectValue<AccountDirectoryStatusReport>('status', status);
        writer.writeBoolValue('usernameCustomizable', value:usernameCustomizable);
    }
}
