/**
 * TravelTime Platform API
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * OpenAPI spec version: 1.0.0
 * Contact: support@igeolise.com
 *
 * NOTE: This class is auto generated by OpenAPI-Generator 3.3.4.
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */



#include "ResponseTimeFilterPostcodeSectorsResult.h"

namespace org {
namespace openapitools {
namespace client {
namespace model {

ResponseTimeFilterPostcodeSectorsResult::ResponseTimeFilterPostcodeSectorsResult()
{
    m_Search_id = utility::conversions::to_string_t("");
}

ResponseTimeFilterPostcodeSectorsResult::~ResponseTimeFilterPostcodeSectorsResult()
{
}

void ResponseTimeFilterPostcodeSectorsResult::validate()
{
    // TODO: implement validation
}

web::json::value ResponseTimeFilterPostcodeSectorsResult::toJson() const
{
    web::json::value val = web::json::value::object();

    val[utility::conversions::to_string_t("search_id")] = ModelBase::toJson(m_Search_id);
    {
        std::vector<web::json::value> jsonArray;
        for( auto& item : m_Sectors )
        {
            jsonArray.push_back(ModelBase::toJson(item));
        }
        val[utility::conversions::to_string_t("sectors")] = web::json::value::array(jsonArray);
    }

    return val;
}

void ResponseTimeFilterPostcodeSectorsResult::fromJson(const web::json::value& val)
{
    setSearchId(ModelBase::stringFromJson(val.at(utility::conversions::to_string_t("search_id"))));
    {
        m_Sectors.clear();
        std::vector<web::json::value> jsonArray;
        for( auto& item : val.at(utility::conversions::to_string_t("sectors")).as_array() )
        {
            if(item.is_null())
            {
                m_Sectors.push_back( std::shared_ptr<ResponseTimeFilterPostcodeSector>(nullptr) );
            }
            else
            {
                std::shared_ptr<ResponseTimeFilterPostcodeSector> newItem(new ResponseTimeFilterPostcodeSector());
                newItem->fromJson(item);
                m_Sectors.push_back( newItem );
            }
        }
    }
}

void ResponseTimeFilterPostcodeSectorsResult::toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix) const
{
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t("."))
    {
        namePrefix += utility::conversions::to_string_t(".");
    }

    multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("search_id"), m_Search_id));
    {
        std::vector<web::json::value> jsonArray;
        for( auto& item : m_Sectors )
        {
            jsonArray.push_back(ModelBase::toJson(item));
        }
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t("sectors"), web::json::value::array(jsonArray), utility::conversions::to_string_t("application/json")));
            }
}

void ResponseTimeFilterPostcodeSectorsResult::fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix)
{
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t("."))
    {
        namePrefix += utility::conversions::to_string_t(".");
    }

    setSearchId(ModelBase::stringFromHttpContent(multipart->getContent(utility::conversions::to_string_t("search_id"))));
    {
        m_Sectors.clear();

        web::json::value jsonArray = web::json::value::parse(ModelBase::stringFromHttpContent(multipart->getContent(utility::conversions::to_string_t("sectors"))));
        for( auto& item : jsonArray.as_array() )
        {
            if(item.is_null())
            {
                m_Sectors.push_back( std::shared_ptr<ResponseTimeFilterPostcodeSector>(nullptr) );
            }
            else
            {
                std::shared_ptr<ResponseTimeFilterPostcodeSector> newItem(new ResponseTimeFilterPostcodeSector());
                newItem->fromJson(item);
                m_Sectors.push_back( newItem );
            }
        }
    }
}

utility::string_t ResponseTimeFilterPostcodeSectorsResult::getSearchId() const
{
    return m_Search_id;
}

void ResponseTimeFilterPostcodeSectorsResult::setSearchId(const utility::string_t& value)
{
    m_Search_id = value;
    
}

std::vector<std::shared_ptr<ResponseTimeFilterPostcodeSector>>& ResponseTimeFilterPostcodeSectorsResult::getSectors()
{
    return m_Sectors;
}

void ResponseTimeFilterPostcodeSectorsResult::setSectors(const std::vector<std::shared_ptr<ResponseTimeFilterPostcodeSector>>& value)
{
    m_Sectors = value;
    
}

}
}
}
}
