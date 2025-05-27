// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../linkable.dart';
import './account_directory_status_report.dart';
import './account_directory_type.dart';

/// auto generated
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
        type_ = 'directory.AccountDirectorySummary';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static AccountDirectorySummary createFromDiscriminatorValue(ParseNode parseNode) {
        return AccountDirectorySummary();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['AccountDirectorySummaryType'] = (node) => accountDirectorySummaryType = node.getEnumValue<AccountDirectoryType>((stringValue) => AccountDirectoryType.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['domainRestriction'] = (node) => domainRestriction = node.getStringValue();
        deserializerMap['fullyResolvedIssuer'] = (node) => fullyResolvedIssuer = node.getStringValue();
        deserializerMap['name'] = (node) => name = node.getStringValue();
        deserializerMap['status'] = (node) => status = node.getObjectValue<AccountDirectoryStatusReport>(AccountDirectoryStatusReport.createFromDiscriminatorValue);
        deserializerMap['usernameCustomizable'] = (node) => usernameCustomizable = node.getBoolValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeEnumValue<AccountDirectoryType>('AccountDirectorySummaryType', accountDirectorySummaryType, (e) => e?.value);
        writer.writeStringValue('domainRestriction', domainRestriction);
        writer.writeStringValue('fullyResolvedIssuer', fullyResolvedIssuer);
        writer.writeStringValue('name', name);
        writer.writeObjectValue<AccountDirectoryStatusReport>('status', status);
        writer.writeBoolValue('usernameCustomizable', value:usernameCustomizable);
    }
}
