// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../models/audit/audit_record_type.dart';
import '../models/boolean_enum.dart';
import '../models/t_l_s_level.dart';
import './get_additional_query_parameter_type.dart';

/// auto generated
/// Queries over all webhooks. The various query parameters can be used to filter the response.
class WebhookRequestBuilderGetQueryParameters implements AbstractQueryParameters {
    ///  Filter webhooks on the given accounts, specified by id.
    List<int>? account;
    ///  Only return active or inactive webhooks.
    List<BooleanEnum>? active;
    ///  Request additional information to be returned for every record.
    List<GetAdditionalQueryParameterType>? additional;
    ///  Return all or no records. This can be useful when composing parameters.
    List<bool>? any;
    ///  Filter webhooks on the given groups performing technical administration for the client for the webhooks, specified by id.
    List<int>? appAdminGroup;
    ///  Filter the webhooks by groups owning the client, specified by id.
    List<int>? appOwnerGroup;
    ///  Filter webhooks on the given clients, specified by id.
    List<int>? client;
    ///  Filter webhooks on the given groups performing content administration for the system for the webhooks, specified by id.
    List<int>? contentAdminGroup;
    ///  Only return records that have been created after the given instant.
    List<DateTime>? createdAfter;
    ///  Only return records that have been created before the given instant.
    List<DateTime>? createdBefore;
    ///  Filter webhooks on the given directories, specified by id.
    List<int>? directory;
    ///  Filter the webhooks by groups owning the internal directory, specified by id.
    List<int>? directoryOwnerGroup;
    ///  Filter the results to exclude the given ids.
    List<int>? exclude;
    ///  Only return webhooks that use certificates that are expired at the given instant.
    List<DateTime>? expiredCertificate;
    ///  Only return webhooks that are or are not global.
    List<bool>? global;
    ///  Filter webhooks on the given groups, specified by id.
    List<int>? group;
    ///  Filter the results on the given ids.
    List<int>? id;
    ///  Only return records that have been modified since the given instant.
    List<DateTime>? modifiedSince;
    ///  Filter webhooks on (part of) the name, uuid or URL.
    List<String>? nameContains;
    ///  Filter records on a complex CQL query.
    List<String>? q;
    ///  Filter webhooks on the given service accounts, specified by id.
    List<int>? serviceAccount;
    ///  Filter webhooks on the given service accounts, specified by id. This parameter supports composition with all parameters from the provisioning group resource.
    List<int>? serviceAccountNotNull;
    ///  Sort the items. Use 'asc-<name>' for ascending and 'desc-<name>' for descending order.
    List<String>? sort;
    ///  Filter webhooks on the given systems, specified by id.
    List<int>? system;
    ///  Filter webhooks on the given groups performing technical administration for the system for the webhooks, specified by id.
    List<int>? systemAdminGroup;
    ///  Filter the webhooks by groups owning the provisioned system, specified by id.
    List<int>? systemOwnerGroup;
    ///  Filter results on the given TLS mode(s).
    List<TLSLevel>? tls;
    ///  Only return webhooks that trigger on one of the given type(s).
    List<AuditRecordType>? type_;
    ///  Filter results on one or more URLs.
    List<String>? url;
    ///  Filter results on one or more UUIDs.
    List<String>? uuid;
    /// Extracts the query parameters into a map for the URI template parsing.
    @override
    Map<String, dynamic> toMap() {
        return {
            'account' : account,
            'active' : active,
            'additional' : additional,
            'any' : any,
            'appAdminGroup' : appAdminGroup,
            'appOwnerGroup' : appOwnerGroup,
            'client' : client,
            'contentAdminGroup' : contentAdminGroup,
            'createdAfter' : createdAfter,
            'createdBefore' : createdBefore,
            'directory' : directory,
            'directoryOwnerGroup' : directoryOwnerGroup,
            'exclude' : exclude,
            'expiredCertificate' : expiredCertificate,
            'global' : global,
            'group' : group,
            'id' : id,
            'modifiedSince' : modifiedSince,
            'nameContains' : nameContains,
            'q' : q,
            'serviceAccount' : serviceAccount,
            'serviceAccountNotNull' : serviceAccountNotNull,
            'sort' : sort,
            'system' : system,
            'systemAdminGroup' : systemAdminGroup,
            'systemOwnerGroup' : systemOwnerGroup,
            'tls' : tls,
            'type_' : type_,
            'url' : url,
            'uuid' : uuid,
        };
    }
}
