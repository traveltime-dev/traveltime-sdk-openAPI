goog.provide('API.Client.RequestTimeFilterFastArrivalSearches');

/**
 * @record
 */
API.Client.RequestTimeFilterFastArrivalSearches = function() {}

/**
 * @type {!Array<!API.Client.RequestTimeFilterFastArrivalManyToOneSearch>}
 * @export
 */
API.Client.RequestTimeFilterFastArrivalSearches.prototype.manyToOne;

/**
 * @type {!Array<!API.Client.RequestTimeFilterFastArrivalOneToManySearch>}
 * @export
 */
API.Client.RequestTimeFilterFastArrivalSearches.prototype.oneToMany;

