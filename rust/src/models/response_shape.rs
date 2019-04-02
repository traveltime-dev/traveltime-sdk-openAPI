/* 
 * TravelTime Platform API
 *
 * No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
 *
 * OpenAPI spec version: 1.0.0
 * Contact: support@igeolise.com
 * Generated by: https://openapi-generator.tech
 */


#[allow(unused_imports)]
use serde_json::Value;

#[derive(Debug, Serialize, Deserialize)]
pub struct ResponseShape {
  #[serde(rename = "shell")]
  shell: Vec<::models::Coords>,
  #[serde(rename = "holes")]
  holes: Vec<Vec<::models::Coords>>
}

impl ResponseShape {
  pub fn new(shell: Vec<::models::Coords>, holes: Vec<Vec<::models::Coords>>) -> ResponseShape {
    ResponseShape {
      shell: shell,
      holes: holes
    }
  }

  pub fn set_shell(&mut self, shell: Vec<::models::Coords>) {
    self.shell = shell;
  }

  pub fn with_shell(mut self, shell: Vec<::models::Coords>) -> ResponseShape {
    self.shell = shell;
    self
  }

  pub fn shell(&self) -> &Vec<::models::Coords> {
    &self.shell
  }


  pub fn set_holes(&mut self, holes: Vec<Vec<::models::Coords>>) {
    self.holes = holes;
  }

  pub fn with_holes(mut self, holes: Vec<Vec<::models::Coords>>) -> ResponseShape {
    self.holes = holes;
    self
  }

  pub fn holes(&self) -> &Vec<Vec<::models::Coords>> {
    &self.holes
  }


}


