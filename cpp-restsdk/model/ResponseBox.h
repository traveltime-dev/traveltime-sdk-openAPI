/**
 * TravelTime API
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * The version of the OpenAPI document: 1.2.3
 * Contact: support@igeolise.com
 *
 * NOTE: This class is auto generated by OpenAPI-Generator 5.2.0-SNAPSHOT.
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

/*
 * ResponseBox.h
 *
 * 
 */

#ifndef ORG_OPENAPITOOLS_CLIENT_MODEL_ResponseBox_H_
#define ORG_OPENAPITOOLS_CLIENT_MODEL_ResponseBox_H_


#include "../ModelBase.h"


namespace org {
namespace openapitools {
namespace client {
namespace model {


/// <summary>
/// 
/// </summary>
class  ResponseBox
    : public ModelBase
{
public:
    ResponseBox();
    virtual ~ResponseBox();

    /////////////////////////////////////////////
    /// ModelBase overrides

    void validate() override;

    web::json::value toJson() const override;
    bool fromJson(const web::json::value& json) override;

    void toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) const override;
    bool fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) override;

    /////////////////////////////////////////////
    /// ResponseBox members

    /// <summary>
    /// 
    /// </summary>
    double getMinLat() const;
    bool minLatIsSet() const;
    void unsetMin_lat();

    void setMinLat(double value);

    /// <summary>
    /// 
    /// </summary>
    double getMaxLat() const;
    bool maxLatIsSet() const;
    void unsetMax_lat();

    void setMaxLat(double value);

    /// <summary>
    /// 
    /// </summary>
    double getMinLng() const;
    bool minLngIsSet() const;
    void unsetMin_lng();

    void setMinLng(double value);

    /// <summary>
    /// 
    /// </summary>
    double getMaxLng() const;
    bool maxLngIsSet() const;
    void unsetMax_lng();

    void setMaxLng(double value);


protected:
    double m_Min_lat;
    bool m_Min_latIsSet;
    double m_Max_lat;
    bool m_Max_latIsSet;
    double m_Min_lng;
    bool m_Min_lngIsSet;
    double m_Max_lng;
    bool m_Max_lngIsSet;
};


}
}
}
}

#endif /* ORG_OPENAPITOOLS_CLIENT_MODEL_ResponseBox_H_ */
