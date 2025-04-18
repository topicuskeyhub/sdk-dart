// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../non_linkable.dart';
import './accounts_audit_stats_directory_stats.dart';
import './accounts_audit_stats_two_f_a_stats.dart';
import './accounts_audit_stats_validity_stats.dart';

/// auto generated
class AccountsAuditStats extends NonLinkable implements Parsable {
    ///  The directoryStats property
    AccountsAuditStatsDirectoryStats? directoryStats;
    ///  The twoFAStats property
    AccountsAuditStatsTwoFAStats? twoFAStats;
    ///  The validityStats property
    AccountsAuditStatsValidityStats? validityStats;
    /// Instantiates a new [AccountsAuditStats] and sets the default values.
    AccountsAuditStats() : super() {
        type_ = 'auth.AccountsAuditStats';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static AccountsAuditStats createFromDiscriminatorValue(ParseNode parseNode) {
        return AccountsAuditStats();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['directoryStats'] = (node) => directoryStats = node.getObjectValue<AccountsAuditStatsDirectoryStats>(AccountsAuditStatsDirectoryStats.createFromDiscriminatorValue);
        deserializerMap['twoFAStats'] = (node) => twoFAStats = node.getObjectValue<AccountsAuditStatsTwoFAStats>(AccountsAuditStatsTwoFAStats.createFromDiscriminatorValue);
        deserializerMap['validityStats'] = (node) => validityStats = node.getObjectValue<AccountsAuditStatsValidityStats>(AccountsAuditStatsValidityStats.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeObjectValue<AccountsAuditStatsDirectoryStats>('directoryStats', directoryStats);
        writer.writeObjectValue<AccountsAuditStatsTwoFAStats>('twoFAStats', twoFAStats);
        writer.writeObjectValue<AccountsAuditStatsValidityStats>('validityStats', validityStats);
    }
}
