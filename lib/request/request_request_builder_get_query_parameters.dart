import 'package:kiota_abstractions/kiota_abstractions.dart';
import '../models/client/o_auth2_client_permission_type.dart';
import '../models/request/authorizing_group_type.dart';
import '../models/request/modification_request_status.dart';
import '../models/request/update_group_membership_type.dart';
import './get_additional_query_parameter_type.dart';

/// Queries over all modification requests. The various query parameters can be used to filter the response.
class RequestRequestBuilderGetQueryParameters implements AbstractQueryParameters {
    ///  Filter requests on the given access profiles, specified by id. This parameter supports composition with all parameters from the access profile unit resource.
    List<int>? accessProfile;
    ///  Only return UpdateGroupMembershipRequest for the given account(s), specified by id. This parameter supports composition with all parameters from the account resource.
    List<int>? accountToUpdate;
    ///  Request additional information to be returned for every record.
    List<GetAdditionalQueryParameterType>? additional;
    ///  Only return RevokeAdminRequest for the given account(s), specified by id. This parameter supports composition with all parameters from the account resource.
    List<int>? adminToRevoke;
    ///  Return all or no records. This can be useful when composing parameters.
    List<bool>? any;
    ///  Filter requests on the given applications, specified by id. This parameter supports composition with all parameters from the client resource.
    List<int>? application;
    ///  Only return SetupAuthorizingGroupRequest for the given type of authorization.
    List<AuthorizingGroupType>? authorizationType;
    ///  Only return SetupAuthorizingGroupRequest(s) for the given authorization type.
    List<AuthorizingGroupType>? authorizingGroupType;
    ///  Only return GrantClientPermissionRequest for the given permission type(s).
    List<OAuth2ClientPermissionType>? clientPermission;
    ///  Only return SetupAuthorizingGroupRequest(s) that either connect or disconnect additional authorization.
    List<bool>? connectAuthorization;
    ///  Only return records that have been created after the given instant.
    List<DateTime>? createdAfter;
    ///  Only return records that have been created before the given instant.
    List<DateTime>? createdBefore;
    ///  Only return requests for the given directory(ies), specified by id. This parameter supports composition with all parameters from the directory resource.
    List<int>? directory;
    ///  Filter the results to exclude the given ids.
    List<int>? exclude;
    ///  Only return GrantGroupOnSystemRequest(s) that either have activation required enabled or disabled.
    List<bool>? grantGroupOnSystemRequestActivationRequired;
    ///  Only return GrantGroupOnSystemRequestRequest(s) that either have activation required enabled or disabled.
    List<bool>? grantGroupOnSystemRequestRequestActivationRequired;
    ///  Filter requests on the given groups, specified by id. This parameter supports composition with all parameters from the group resource.
    List<int>? group;
    ///  Filter requests on the given group on system, specified by id. This parameter supports composition with all parameters from the group on system resource.
    List<int>? groupOnSystem;
    ///  Filter requests for multiple groups if they contain any of the given groups.
    List<int>? groupsOverlapWith;
    ///  Filter the results on the given ids.
    List<int>? id;
    ///  Only return VerifyInternalAccountRequest for the given internal account(s), specified by id. This parameter supports composition with all parameters from the internal account resource.
    List<int>? internalAccount;
    ///  Filter requests on the exact mail keys.
    List<String>? mailKey;
    ///  Only return records that have been modified since the given instant.
    List<DateTime>? modifiedSince;
    ///  Only return AddGroupAdminRequest for the given account(s), specified by id. This parameter supports composition with all parameters from the account resource.
    List<int>? newAdmin;
    ///  Only return CreateGroupRequest with an exact match on the group name.
    List<String>? newGroupName;
    ///  Only return CreateGroupOnSystemRequest with an exact match on the name in system.
    List<String>? newGroupOnSystemName;
    ///  Only return CreateProvisionedNamespaceRequest with an exact match on the namespace name.
    List<String>? newNamespaceName;
    ///  Only return CreateServiceAccountRequest with an exact match on the username.
    List<String>? newServiceAccountName;
    ///  Filter requests on the given organizational units, specified by id. This parameter supports composition with all parameters from the organizational unit resource.
    List<int>? organizationalUnit;
    ///  Only return CreateGroupOnSystemRequest with the given owner group(s), specified by id. This parameter supports composition with all parameters from the grouop resource.
    List<int>? ownerGroup;
    ///  Only return requests that were preceded by the given request(s), specified by id. This parameter supports composition with all parameters from the request resource.
    List<int>? precededBy;
    ///  Only return modification requests that can be processed by the given account, specified by id. This includes requests requested by the given account that are not yet processed or have been declined in the past 2 days.
    List<int>? processedBy;
    ///  Filter records on a complex CQL query.
    List<String>? q;
    ///  Only return requests requested by the given account(s), specified by id. This parameter supports composition with all parameters from the account resource.
    List<int>? requestedBy;
    ///  Only return requests that are requested for the given groups, specified by id. This parameter supports composition with all parameters from the group resource.
    List<int>? requestingGroup;
    ///  Filter requests on the given service accounts, specified by id. This parameter supports composition with all parameters from the service account resource.
    List<int>? serviceAccount;
    ///  Sort the items. Use 'asc-<name>' for ascending and 'desc-<name>' for descending order.
    List<String>? sort;
    ///  Filter requests on the given status(es).
    List<ModificationRequestStatus>? status;
    ///  Filter requests on the given systems, specified by id. This parameter supports composition with all parameters from the system resource.
    List<int>? system;
    ///  Only return requests that did or did not trigger a follow up request.
    List<bool>? triggeredFollowUpRequest;
    ///  Only return requests of the given type(s).
    List<String>? typeEscaped;
    ///  Only return UpdateGroupMembershipRequest(s) of the given update type.
    List<UpdateGroupMembershipType>? updateGroupMembershipType;
    ///  Only return requests the were processed by the given account(s), specified by id. This parameter supports composition with all parameters from the account resource.
    List<int>? wasProcessedBy;
    /// Extracts the query parameters into a map for the URI template parsing.
    @override
    Map<String, dynamic> toMap() {
        return {
            'accessProfile' : accessProfile,
            'accountToUpdate' : accountToUpdate,
            'additional' : additional,
            'adminToRevoke' : adminToRevoke,
            'any' : any,
            'application' : application,
            'authorizationType' : authorizationType,
            'authorizingGroupType' : authorizingGroupType,
            'clientPermission' : clientPermission,
            'connectAuthorization' : connectAuthorization,
            'createdAfter' : createdAfter,
            'createdBefore' : createdBefore,
            'directory' : directory,
            'exclude' : exclude,
            'grantGroupOnSystemRequestActivationRequired' : grantGroupOnSystemRequestActivationRequired,
            'grantGroupOnSystemRequestRequestActivationRequired' : grantGroupOnSystemRequestRequestActivationRequired,
            'group' : group,
            'groupOnSystem' : groupOnSystem,
            'groupsOverlapWith' : groupsOverlapWith,
            'id' : id,
            'internalAccount' : internalAccount,
            'mailKey' : mailKey,
            'modifiedSince' : modifiedSince,
            'newAdmin' : newAdmin,
            'newGroupName' : newGroupName,
            'newGroupOnSystemName' : newGroupOnSystemName,
            'newNamespaceName' : newNamespaceName,
            'newServiceAccountName' : newServiceAccountName,
            'organizationalUnit' : organizationalUnit,
            'ownerGroup' : ownerGroup,
            'precededBy' : precededBy,
            'processedBy' : processedBy,
            'q' : q,
            'requestedBy' : requestedBy,
            'requestingGroup' : requestingGroup,
            'serviceAccount' : serviceAccount,
            'sort' : sort,
            'status' : status,
            'system' : system,
            'triggeredFollowUpRequest' : triggeredFollowUpRequest,
            'typeEscaped' : typeEscaped,
            'updateGroupMembershipType' : updateGroupMembershipType,
            'wasProcessedBy' : wasProcessedBy,
        };
    }
}
