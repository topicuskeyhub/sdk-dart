// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './post_additional_query_parameter_type.dart';

/// auto generated
/// Creates one or more new groups on systems and returns the newly created groups on systems. The groups will also be provisioned to the targeted provisioned system. By default, for every group on system, a provisioning group will be created granting the owner access to the newly created group. It is also possible to specify the provisioning groups to be created via the 'provgroups' addionalObjects property.
class GroupRequestBuilderPostQueryParameters implements AbstractQueryParameters {
    ///  Request additional information to be returned for every record.
    List<PostAdditionalQueryParameterType>? additional;
    /// Extracts the query parameters into a map for the URI template parsing.
    @override
    Map<String, dynamic> toMap() {
        return {
            'additional' : additional,
        };
    }
}
