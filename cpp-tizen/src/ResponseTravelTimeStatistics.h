/*
 * ResponseTravelTimeStatistics.h
 *
 * 
 */

#ifndef _ResponseTravelTimeStatistics_H_
#define _ResponseTravelTimeStatistics_H_


#include <string>
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

class ResponseTravelTimeStatistics : public Object {
public:
	/*! \brief Constructor.
	 */
	ResponseTravelTimeStatistics();
	ResponseTravelTimeStatistics(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ResponseTravelTimeStatistics();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	int getMin();

	/*! \brief Set 
	 */
	void setMin(int  min);
	/*! \brief Get 
	 */
	int getMax();

	/*! \brief Set 
	 */
	void setMax(int  max);
	/*! \brief Get 
	 */
	int getMean();

	/*! \brief Set 
	 */
	void setMean(int  mean);
	/*! \brief Get 
	 */
	int getMedian();

	/*! \brief Set 
	 */
	void setMedian(int  median);

private:
	int min;
	int max;
	int mean;
	int median;
	void __init();
	void __cleanup();

};
}
}

#endif /* _ResponseTravelTimeStatistics_H_ */
