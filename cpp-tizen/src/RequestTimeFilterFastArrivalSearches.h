/*
 * RequestTimeFilterFastArrivalSearches.h
 *
 * 
 */

#ifndef _RequestTimeFilterFastArrivalSearches_H_
#define _RequestTimeFilterFastArrivalSearches_H_


#include <string>
#include "RequestTimeFilterFastArrivalManyToOneSearch.h"
#include "RequestTimeFilterFastArrivalOneToManySearch.h"
#include <list>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class RequestTimeFilterFastArrivalSearches : public Object {
public:
	/*! \brief Constructor.
	 */
	RequestTimeFilterFastArrivalSearches();
	RequestTimeFilterFastArrivalSearches(char* str);

	/*! \brief Destructor.
	 */
	virtual ~RequestTimeFilterFastArrivalSearches();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::list<RequestTimeFilterFastArrivalManyToOneSearch> getManyToOne();

	/*! \brief Set 
	 */
	void setManyToOne(std::list <RequestTimeFilterFastArrivalManyToOneSearch> many_to_one);
	/*! \brief Get 
	 */
	std::list<RequestTimeFilterFastArrivalOneToManySearch> getOneToMany();

	/*! \brief Set 
	 */
	void setOneToMany(std::list <RequestTimeFilterFastArrivalOneToManySearch> one_to_many);

private:
	std::list <RequestTimeFilterFastArrivalManyToOneSearch>many_to_one;
	std::list <RequestTimeFilterFastArrivalOneToManySearch>one_to_many;
	void __init();
	void __cleanup();

};
}
}

#endif /* _RequestTimeFilterFastArrivalSearches_H_ */
