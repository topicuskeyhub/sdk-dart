// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../non_linkable.dart';
import './service_accounts_audit_stats_password_scheme_enabled_stats.dart';
import './service_accounts_audit_stats_system_stats.dart';

/// auto generated
class ServiceAccountsAuditStats extends NonLinkable implements Parsable {
    ///  The disabledCount property
    int? disabledCount;
    ///  The passwordSchemeEnabledStats property
    ServiceAccountsAuditStatsPasswordSchemeEnabledStats? passwordSchemeEnabledStats;
    ///  The systemStats property
    ServiceAccountsAuditStatsSystemStats? systemStats;
    /// Instantiates a new [ServiceAccountsAuditStats] and sets the default values.
    ServiceAccountsAuditStats() : super() {
        type_ = 'serviceaccount.ServiceAccountsAuditStats';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ServiceAccountsAuditStats createFromDiscriminatorValue(ParseNode parseNode) {
        return ServiceAccountsAuditStats();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = super.getFieldDeserializers();
        deserializerMap['disabledCount'] = (node) => disabledCount = node.getIntValue();
        deserializerMap['passwordSchemeEnabledStats'] = (node) => passwordSchemeEnabledStats = node.getObjectValue<ServiceAccountsAuditStatsPasswordSchemeEnabledStats>(ServiceAccountsAuditStatsPasswordSchemeEnabledStats.createFromDiscriminatorValue);
        deserializerMap['systemStats'] = (node) => systemStats = node.getObjectValue<ServiceAccountsAuditStatsSystemStats>(ServiceAccountsAuditStatsSystemStats.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeIntValue('disabledCount', disabledCount);
        writer.writeObjectValue<ServiceAccountsAuditStatsPasswordSchemeEnabledStats>('passwordSchemeEnabledStats', passwordSchemeEnabledStats);
        writer.writeObjectValue<ServiceAccountsAuditStatsSystemStats>('systemStats', systemStats);
    }
}
