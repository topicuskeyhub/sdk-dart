import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../non_linkable.dart';
import './service_accounts_audit_stats_password_scheme_enabled_stats.dart';
import './service_accounts_audit_stats_system_stats.dart';

class ServiceAccountsAuditStats extends NonLinkable implements Parsable {
    ///  The disabledCount property
    int? disabledCount;
    ///  The passwordSchemeEnabledStats property
    ServiceAccountsAuditStatsPasswordSchemeEnabledStats? passwordSchemeEnabledStats;
    ///  The systemStats property
    ServiceAccountsAuditStatsSystemStats? systemStats;
    /// Instantiates a new [ServiceAccountsAuditStats] and sets the default values.
     ServiceAccountsAuditStats() : super() {
        typeEscaped = 'serviceaccount.ServiceAccountsAuditStats';
    }
    /// Creates a new instance of the appropriate class based on discriminator value
    /// <param name="parseNode">parseNode</param>
     static ServiceAccountsAuditStats createFromDiscriminatorValue(ParseNode parseNode) {
        return ServiceAccountsAuditStats();
    }
    /// The deserialization information for the current model
    @override
     Map<String, void Function(ParseNode)> getFieldDeserializers() {
        Map<String, Function(ParseNode)> deserializerMap = super.getFieldDeserializers();
        deserializerMap['disabledCount'] = (node) => disabledCount = node.getIntValue();
        deserializerMap['passwordSchemeEnabledStats'] = (node) => passwordSchemeEnabledStats = node.getObjectValue<ServiceAccountsAuditStatsPasswordSchemeEnabledStats>(ServiceAccountsAuditStatsPasswordSchemeEnabledStats.createFromDiscriminatorValue);
        deserializerMap['systemStats'] = (node) => systemStats = node.getObjectValue<ServiceAccountsAuditStatsSystemStats>(ServiceAccountsAuditStatsSystemStats.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    /// <param name="writer">writer</param>
    @override
     void serialize(SerializationWriter writer) {
        super.serialize(writer);
        writer.writeIntValue('disabledCount', disabledCount);
        writer.writeObjectValue<ServiceAccountsAuditStatsPasswordSchemeEnabledStats>('passwordSchemeEnabledStats', passwordSchemeEnabledStats);
        writer.writeObjectValue<ServiceAccountsAuditStatsSystemStats>('systemStats', systemStats);
    }
}
