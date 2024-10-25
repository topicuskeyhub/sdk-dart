import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../models/group/group_auditing_status.dart';
import '../models/group/group_classification_conformance.dart';
import '../models/group/group_visibility.dart';
import '../models/group/vault_recovery_availability.dart';
import './get_additional_query_parameter_type.dart';

/// Query for all groups in Topicus KeyHub. The various query parameters can be used to filter the response.
class GroupRequestBuilderGetQueryParameters implements AbstractQueryParameters {
    ///  Search groups by connected, owned or administrated clients, linked systems, webhooks or service accounts that have been modified since the given instance.
    List<DateTime>? accessModifiedSince;
    ///  Only return groups that have or have not enabled access profile administration.
    List<bool>? accessProfileAdministration;
    ///  Search groups by name of connected, owned or administrated clients, linked systems, webhooks or service accounts.
    List<String>? accessQuicksearch;
    ///  Request additional information to be returned for every record.
    List<GetAdditionalQueryParameterType>? additional;
    ///  Return all or no records. This can be useful when composing parameters.
    List<bool>? any;
    ///  Only return groups that have or have not enabled application administration.
    List<bool>? applicationAdministration;
    ///  Only return groups that are or are not due for a periodic audit.
    List<bool>? auditDue;
    ///  Only return groups that have been audited since the given instant.
    List<DateTime>? auditedSince;
    ///  Filter groups on the status of its periodic auditing. These sets are disjunct. A group always has only one status. A group that is over due for auditing will not be returned when only AUDITED is requested.
    List<GroupAuditingStatus>? auditingStatus;
    ///  Only return groups that are or are not over due for a periodic audit.
    List<bool>? auditOverDue;
    ///  Only return groups for which an audit is or is not requested.
    List<bool>? auditRequested;
    ///  Filter groups for which audits are reviewed by one of the given groups, specified by id. This parameter supports composition with all parameters from the group resource.
    List<int>? auditsReviewedBy;
    ///  Filter groups for which the given groups perform some form of authorization, specified by id.
    List<int>? authorizedBy;
    ///  Filter groups by classification, specified by id. This parameter supports composition with all parameters from the group classification resource.
    List<int>? classification;
    ///  Filter the groups by membership of accounts, specified by id. This parameter supports composition with all parameters from the account resource.
    List<int>? containsAccount;
    ///  Filter the groups by membership of all accounts, specified by id.
    List<int>? containsAllAccounts;
    ///  Filter the groups with clients connected, specified by id. This parameter supports composition with all parameters from the client resource.
    List<int>? containsClient;
    ///  Only return records that have been created after the given instant.
    List<DateTime>? createdAfter;
    ///  Only return records that have been created before the given instant.
    List<DateTime>? createdBefore;
    ///  Filter groups that have delegated management to one of the given groups, specified by id. This parameter supports composition with all parameters from the group resource.
    List<int>? delegationGivenTo;
    ///  Filter the groups by accounts not being member, specified by id.
    List<int>? doesNotContainAccount;
    ///  Filter the groups with clients not connected, specified by id.
    List<int>? doesNotContainClient;
    ///  Filter the results to exclude the given ids.
    List<int>? exclude;
    ///  Filter groups by auditing configuration.
    List<int>? groupAuditConfig;
    ///  Only return groups that have, or do not have, any authorizing group set.
    List<bool>? hasAnyAuthorizingGroupSet;
    ///  Only return groups that have or do not have periodic auditing setup.
    List<bool>? hasAuditing;
    ///  Only return groups that have or do not have an audit that is currently under review.
    List<bool>? hasAuditUnderReview;
    ///  Only return groups that have or do not have given permissions to OAuth2 clients.
    List<bool>? hasClientPermissions;
    ///  Only return groups that have or do not have connected clients.
    List<bool>? hasClients;
    ///  Only return groups that have or do not have 2 or more managers.
    List<bool>? hasMoreThanOneManager;
    ///  Only return groups that have or do not have dynamic provisioning of linked systems.
    List<bool>? hasSystems;
    ///  Only return groups that have or do not have a vault.
    List<bool>? hasVault;
    ///  Only return groups that have or do not have webhooks on audit records.
    List<bool>? hasWebhooks;
    ///  Filter the results on the given ids.
    List<int>? id;
    ///  Only return groups for which the given account is manager, specified by id.
    List<int>? isManager;
    ///  Only return the KeyHub administrator group or all other groups.
    List<bool>? keyHubAdmin;
    ///  Only return groups that do or do not meet the various criteria set in the classification (if any).
    List<GroupClassificationConformance>? meetsClassificationCriteria;
    ///  Filter groups for which membership is authorized by one of the given groups, specified by id. This parameter supports composition with all parameters from the group resource.
    List<int>? membershipAuthorizedBy;
    ///  Only return records that have been modified since the given instant.
    List<DateTime>? modifiedSince;
    ///  Filter my groups for the given accounts, specified by id. This contains the groups the account is member of or for which the account has delegated management privileges.
    List<int>? myGroups;
    ///  Filter groups on the exact name.
    List<String>? name;
    ///  Filter groups on (part of) the name or uuid.
    List<String>? nameContains;
    ///  Filter groups with which the name does not start with the given values.
    List<String>? nameDoesNotStartWith;
    ///  Filter groups on (part of) the name, description or uuid.
    List<String>? nameOrDescriptionContains;
    ///  Filter groups on the start of the name.
    List<String>? nameStartsWith;
    ///  Only return groups that are, or are not, nested under another group.
    List<bool>? nestedGroup;
    ///  Only return groups that are nested under the given groups, specified by id. This parameter supports composition with all parameters from the group resource.
    List<int>? nestedUnder;
    ///  Only return groups that are not nested under the given groups, specified by id. This parameter supports composition with all parameters from the group resource.
    List<int>? notNestedUnder;
    ///  Only return groups that have at least the given number of members.
    List<int>? numberOfAccountsGreaterOrEqual;
    ///  Filter groups on organizational units, specified by id. This parameter supports composition with all parameters from the organizational unit resource.
    List<int>? organizationalUnit;
    ///  Only return groups that own or do not own clients.
    List<bool>? ownsClients;
    ///  Only return groups that own or do not own internal directories.
    List<bool>? ownsDirectories;
    ///  Only return groups that own or do not own groups on linked systems.
    List<bool>? ownsGroupOnSystems;
    ///  Only return groups that own or do not own provisioned systems.
    List<bool>? ownsSystems;
    ///  Only return groups that are, or are not, marked as private group.
    List<bool>? privateGroup;
    ///  Filter groups for which provisioning is authorized by one of the given groups, specified by id. This parameter supports composition with all parameters from the group resource.
    List<int>? provisioningAuthorizedBy;
    ///  Filter records on a complex CQL query.
    List<String>? q;
    ///  Only return groups that do, or do not, require a rotating password to activate.
    List<bool>? rotatingPasswordRequired;
    ///  Only return groups that allow or do not allow management by a single manager.
    List<bool>? singleManaged;
    ///  Sort the items. Use 'asc-<name>' for ascending and 'desc-<name>' for descending order.
    List<String>? sort;
    ///  Filter results on one or more UUIDs.
    List<String>? uuid;
    ///  Filter the groups by vault, specified by id. This parameter supports composition with all parameters from the vault resource.
    List<int>? vault;
    ///  Only return groups with the given vault recovery availability.
    List<VaultRecoveryAvailability>? vaultRecovery;
    ///  Only return groups for which activation is or is not required when accessing the vault.
    List<bool>? vaultRequiresActivation;
    ///  Filter groups on whether they are public or only visible to members. Possible values are ALL ("return all groups (public and hidden)"), PUBLIC ("return only public groups") and PUBLIC_OR_MEMBER ("return public groups and hidden groups of which the current subject is a member"). Default is PUBLIC_OR_MEMBER. This option does not influence permissions, i.e. filtering on ALL can lead to errors if the current subject does not have the correct permissions on one or more groups.
    List<GroupVisibility>? visibility;
    /// Extracts the query parameters into a map for the URI template parsing.
    @override
     Map<String, dynamic> toMap() {
        return {
            'accessModifiedSince' : accessModifiedSince,
            'accessProfileAdministration' : accessProfileAdministration,
            'accessQuicksearch' : accessQuicksearch,
            'additional' : additional,
            'any' : any,
            'applicationAdministration' : applicationAdministration,
            'auditDue' : auditDue,
            'auditedSince' : auditedSince,
            'auditingStatus' : auditingStatus,
            'auditOverDue' : auditOverDue,
            'auditRequested' : auditRequested,
            'auditsReviewedBy' : auditsReviewedBy,
            'authorizedBy' : authorizedBy,
            'classification' : classification,
            'containsAccount' : containsAccount,
            'containsAllAccounts' : containsAllAccounts,
            'containsClient' : containsClient,
            'createdAfter' : createdAfter,
            'createdBefore' : createdBefore,
            'delegationGivenTo' : delegationGivenTo,
            'doesNotContainAccount' : doesNotContainAccount,
            'doesNotContainClient' : doesNotContainClient,
            'exclude' : exclude,
            'groupAuditConfig' : groupAuditConfig,
            'hasAnyAuthorizingGroupSet' : hasAnyAuthorizingGroupSet,
            'hasAuditing' : hasAuditing,
            'hasAuditUnderReview' : hasAuditUnderReview,
            'hasClientPermissions' : hasClientPermissions,
            'hasClients' : hasClients,
            'hasMoreThanOneManager' : hasMoreThanOneManager,
            'hasSystems' : hasSystems,
            'hasVault' : hasVault,
            'hasWebhooks' : hasWebhooks,
            'id' : id,
            'isManager' : isManager,
            'keyHubAdmin' : keyHubAdmin,
            'meetsClassificationCriteria' : meetsClassificationCriteria,
            'membershipAuthorizedBy' : membershipAuthorizedBy,
            'modifiedSince' : modifiedSince,
            'myGroups' : myGroups,
            'name' : name,
            'nameContains' : nameContains,
            'nameDoesNotStartWith' : nameDoesNotStartWith,
            'nameOrDescriptionContains' : nameOrDescriptionContains,
            'nameStartsWith' : nameStartsWith,
            'nestedGroup' : nestedGroup,
            'nestedUnder' : nestedUnder,
            'notNestedUnder' : notNestedUnder,
            'numberOfAccountsGreaterOrEqual' : numberOfAccountsGreaterOrEqual,
            'organizationalUnit' : organizationalUnit,
            'ownsClients' : ownsClients,
            'ownsDirectories' : ownsDirectories,
            'ownsGroupOnSystems' : ownsGroupOnSystems,
            'ownsSystems' : ownsSystems,
            'privateGroup' : privateGroup,
            'provisioningAuthorizedBy' : provisioningAuthorizedBy,
            'q' : q,
            'rotatingPasswordRequired' : rotatingPasswordRequired,
            'singleManaged' : singleManaged,
            'sort' : sort,
            'uuid' : uuid,
            'vault' : vault,
            'vaultRecovery' : vaultRecovery,
            'vaultRequiresActivation' : vaultRequiresActivation,
            'visibility' : visibility,
        };
    }
}
