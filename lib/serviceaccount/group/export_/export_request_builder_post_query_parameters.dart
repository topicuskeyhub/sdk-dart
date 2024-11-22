// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/boolean_enum.dart';
import '../../../models/serviceaccount/password_rotation_scheme.dart';

/// auto generated
/// Prepares an export of service account group on systems using the filtering specified in the query parameters. The URI of the export can be found in the returned Location header. This URI is valid for 2 minutes after being generated.
class ExportRequestBuilderPostQueryParameters implements AbstractQueryParameters {
    ///  Only return active or inactive service accounts.
    List<BooleanEnum>? active;
    ///  Return all or no records. This can be useful when composing parameters.
    List<bool>? any;
    ///  Only return records that have been created after the given instant.
    List<DateTime>? createdAfter;
    ///  Only return records that have been created before the given instant.
    List<DateTime>? createdBefore;
    ///  Filter the results to exclude the given ids.
    List<int>? exclude;
    ///  Filter the service accounts by groups on systems, specified by id. This parameter supports composition with all parameters from the group on system resource.
    List<int>? groupOnSystem;
    ///  Filter the service accounts on group on systems owned by any of the given groups, specified by id.
    List<int>? groupOnSystemOwners;
    ///  Filter the results on the given ids.
    List<int>? id;
    ///  Only return records that have been modified since the given instant.
    List<DateTime>? modifiedSince;
    ///  Filter service accounts on the exact name.
    List<String>? name;
    ///  Search service accounts on (part of) the name, username or uuid.
    List<String>? nameContains;
    ///  Only return service accounts for which the name does not start with the given prefix.
    List<String>? nameDoesNotStartWith;
    ///  Only return service accounts for which the name starts with the given prefix.
    List<String>? nameStartsWith;
    ///  Filter service accounts on their organizational units, specified by id. This parameter supports composition with all parameters from the organizational unit resource.
    List<int>? organizationalUnitForEnforcement;
    ///  Filter the service accounts by the password shared in the vault, specified by id. This parameter supports composition with all parameters from the vault record resource.
    List<int>? password;
    ///  Only return service accounts with the given password rotation scheme.
    List<PasswordRotationScheme>? passwordRotation;
    ///  Filter records on a complex CQL query.
    List<String>? q;
    ///  Filter the service accounts on active requests for group on systems owned by any of the given groups, specified by id.
    List<int>? requestedGroupOnSystemOwners;
    ///  Sort the items. Use 'asc-<name>' for ascending and 'desc-<name>' for descending order.
    List<String>? sort;
    ///  Filter the service accounts by provisioned systems, specified by id. This parameter supports composition with all parameters from the provisioned system resource.
    List<int>? system;
    ///  Filter the service accounts on the content administration group of a provisioned system, specified by id.
    List<int>? systemContentAdministrators;
    ///  Filter the service accounts on the owning group of its provisioned system, specified by id.
    List<int>? systemOwners;
    ///  Filter the service accounts on the technical administrator group of its provisioned system, specified by id.
    List<int>? systemTechnicalAdministrators;
    ///  Filter the service accounts on groups that perform technical administration for them, specified by id. This parameter supports composition with all parameters from the group resource.
    List<int>? technicalAdministrator;
    ///  Filter service accounts on the exact username.
    List<String>? username;
    ///  Filter results on one or more UUIDs.
    List<String>? uuid;
    /// Extracts the query parameters into a map for the URI template parsing.
    @override
    Map<String, dynamic> toMap() {
        return {
            'active' : active,
            'any' : any,
            'createdAfter' : createdAfter,
            'createdBefore' : createdBefore,
            'exclude' : exclude,
            'groupOnSystem' : groupOnSystem,
            'groupOnSystemOwners' : groupOnSystemOwners,
            'id' : id,
            'modifiedSince' : modifiedSince,
            'name' : name,
            'nameContains' : nameContains,
            'nameDoesNotStartWith' : nameDoesNotStartWith,
            'nameStartsWith' : nameStartsWith,
            'organizationalUnitForEnforcement' : organizationalUnitForEnforcement,
            'password' : password,
            'passwordRotation' : passwordRotation,
            'q' : q,
            'requestedGroupOnSystemOwners' : requestedGroupOnSystemOwners,
            'sort' : sort,
            'system' : system,
            'systemContentAdministrators' : systemContentAdministrators,
            'systemOwners' : systemOwners,
            'systemTechnicalAdministrators' : systemTechnicalAdministrators,
            'technicalAdministrator' : technicalAdministrator,
            'username' : username,
            'uuid' : uuid,
        };
    }
}
