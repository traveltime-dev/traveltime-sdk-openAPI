/**
 * TravelTime API
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: 1.2.2
 * Contact: support@igeolise.com
 *
 * NOTE: This class is auto generated by OpenAPI-Generator 5.2.0-SNAPSHOT.
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */



#include "ResponseTravelTimeStatistics.h"

namespace org {
namespace openapitools {
namespace client {
namespace model {




ResponseTravelTimeStatistics::ResponseTravelTimeStatistics()
{
    m_Min = 0;
    m_MinIsSet = false;
    m_Max = 0;
    m_MaxIsSet = false;
    m_Mean = 0;
    m_MeanIsSet = false;
    m_Median = 0;
    m_MedianIsSet = false;
}

ResponseTravelTimeStatistics::~ResponseTravelTimeStatistics()
{
}

void ResponseTravelTimeStatistics::validate()
{
    // TODO: implement validation
}

web::json::value ResponseTravelTimeStatistics::toJson() const
{

    web::json::value val = web::json::value::object();
    
    if(m_MinIsSet)
    {
        val[utility::conversions::to_string_t("min")] = ModelBase::toJson(m_Min);
    }
    if(m_MaxIsSet)
    {
        val[utility::conversions::to_string_t("max")] = ModelBase::toJson(m_Max);
    }
    if(m_MeanIsSet)
    {
        val[utility::conversions::to_string_t("mean")] = ModelBase::toJson(m_Mean);
    }
    if(m_MedianIsSet)
    {
        val[utility::conversions::to_string_t("median")] = ModelBase::toJson(m_Median);
    }

    return val;
}

bool ResponseTravelTimeStatistics::fromJson(const web::json::value& val)
{
    bool ok = true;
    
    if(val.has_field(utility::conversions::to_string_t("min")))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t("min"));
        if(!fieldValue.is_null())
        {
            int32_t refVal_min;
            ok &= ModelBase::fromJson(fieldValue, refVal_min);
            setMin(refVal_min);
        }
    }
    if(val.has_field(utility::conversions::to_string_t("max")))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t("max"));
        if(!fieldValue.is_null())
        {
            int32_t refVal_max;
            ok &= ModelBase::fromJson(fieldValue, refVal_max);
            setMax(refVal_max);
        }
    }
    if(val.has_field(utility::conversions::to_string_t("mean")))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t("mean"));
        if(!fieldValue.is_null())
        {
            int32_t refVal_mean;
            ok &= ModelBase::fromJson(fieldValue, refVal_mean);
            setMean(refVal_mean);
        }
    }
    if(val.has_field(utility::conversions::to_string_t("median")))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t("median"));
        if(!fieldValue.is_null())
        {
            int32_t refVal_median;
            ok &= ModelBase::fromJson(fieldValue, refVal_median);
            setMedian(refVal_median);
        }
    }
    return ok;
}

void ResponseTravelTimeStatistics::toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix) const
{
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t("."))
    {
        namePrefix += utility::conversions::to_string_t(".");
    }
    if(m_MinIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("min"), m_Min));
    }
    if(m_MaxIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("max"), m_Max));
    }
    if(m_MeanIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("mean"), m_Mean));
    }
    if(m_MedianIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("median"), m_Median));
    }
}

bool ResponseTravelTimeStatistics::fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix)
{
    bool ok = true;
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t("."))
    {
        namePrefix += utility::conversions::to_string_t(".");
    }

    if(multipart->hasContent(utility::conversions::to_string_t("min")))
    {
        int32_t refVal_min;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t("min")), refVal_min );
        setMin(refVal_min);
    }
    if(multipart->hasContent(utility::conversions::to_string_t("max")))
    {
        int32_t refVal_max;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t("max")), refVal_max );
        setMax(refVal_max);
    }
    if(multipart->hasContent(utility::conversions::to_string_t("mean")))
    {
        int32_t refVal_mean;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t("mean")), refVal_mean );
        setMean(refVal_mean);
    }
    if(multipart->hasContent(utility::conversions::to_string_t("median")))
    {
        int32_t refVal_median;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t("median")), refVal_median );
        setMedian(refVal_median);
    }
    return ok;
}

int32_t ResponseTravelTimeStatistics::getMin() const
{
    return m_Min;
}

void ResponseTravelTimeStatistics::setMin(int32_t value)
{
    m_Min = value;
    m_MinIsSet = true;
}

bool ResponseTravelTimeStatistics::minIsSet() const
{
    return m_MinIsSet;
}

void ResponseTravelTimeStatistics::unsetMin()
{
    m_MinIsSet = false;
}
int32_t ResponseTravelTimeStatistics::getMax() const
{
    return m_Max;
}

void ResponseTravelTimeStatistics::setMax(int32_t value)
{
    m_Max = value;
    m_MaxIsSet = true;
}

bool ResponseTravelTimeStatistics::maxIsSet() const
{
    return m_MaxIsSet;
}

void ResponseTravelTimeStatistics::unsetMax()
{
    m_MaxIsSet = false;
}
int32_t ResponseTravelTimeStatistics::getMean() const
{
    return m_Mean;
}

void ResponseTravelTimeStatistics::setMean(int32_t value)
{
    m_Mean = value;
    m_MeanIsSet = true;
}

bool ResponseTravelTimeStatistics::meanIsSet() const
{
    return m_MeanIsSet;
}

void ResponseTravelTimeStatistics::unsetMean()
{
    m_MeanIsSet = false;
}
int32_t ResponseTravelTimeStatistics::getMedian() const
{
    return m_Median;
}

void ResponseTravelTimeStatistics::setMedian(int32_t value)
{
    m_Median = value;
    m_MedianIsSet = true;
}

bool ResponseTravelTimeStatistics::medianIsSet() const
{
    return m_MedianIsSet;
}

void ResponseTravelTimeStatistics::unsetMedian()
{
    m_MedianIsSet = false;
}
}
}
}
}


