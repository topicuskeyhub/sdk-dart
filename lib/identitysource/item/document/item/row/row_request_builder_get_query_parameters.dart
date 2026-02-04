// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../../models/identitysource/imported_row_status.dart';
import './get_additional_query_parameter_type.dart';

/// auto generated
/// Query for imported rows in the imported document. The various query parameters can be used to filter the response.
class RowRequestBuilderGetQueryParameters implements AbstractQueryParameters {
    ///  Request additional information to be returned for every record.
    List<GetAdditionalQueryParameterType>? additional;
    ///  Return all or no records. This can be useful when composing parameters.
    List<bool>? any;
    ///  Only return records that have been created after the given instant.
    List<DateTime>? createdAfter;
    ///  Only return records that have been created before the given instant.
    List<DateTime>? createdBefore;
    ///  Only return imported rows for the given imported documents, specified by id. This parameter supports composition with all parameters from the imported document resource.
    List<int>? document;
    ///  Filter the results to exclude the given ids.
    List<int>? exclude;
    ///  Filter the results on the given ids.
    List<int>? id;
    ///  Filter imported rows on (part of) the identifier column.
    List<String>? identifier;
    ///  Only return imported rows for the given matched accounts, specified by id. This parameter supports composition with all parameters from the account resource.
    List<int>? matchedAccount;
    ///  Only return records that have been modified since the given instant.
    List<DateTime>? modifiedSince;
    ///  Filter records on a complex CQL query.
    List<String>? q;
    ///  Sort the items. Use 'asc-<name>' for ascending and 'desc-<name>' for descending order.
    List<String>? sort;
    ///  Filter imported rows on the given status(es).
    List<ImportedRowStatus>? status;
    /// Extracts the query parameters into a map for the URI template parsing.
    @override
    Map<String, dynamic> toMap() {
        return {
            'additional' : additional,
            'any' : any,
            'createdAfter' : createdAfter,
            'createdBefore' : createdBefore,
            'document' : document,
            'exclude' : exclude,
            'id' : id,
            'identifier' : identifier,
            'matchedAccount' : matchedAccount,
            'modifiedSince' : modifiedSince,
            'q' : q,
            'sort' : sort,
            'status' : status,
        };
    }
}
