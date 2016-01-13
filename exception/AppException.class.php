<?php

namespace app\exception;

/**
 * Description of AppException
 *
 * @author thiago
 */
class AppException extends \stphp\Exception\STException {

  private $http_code_status;
  private $http_status;
  
  
  
  function getHttp_code_status() {
    return $this->http_code_status;
  }

  function getHttp_status() {
    return $this->http_status;
  }

  function setHttp_code_status($http_code_status) {
    $this->http_code_status = $http_code_status;
  }

  function setHttp_status($http_status) {
    $this->http_status = $http_status;
  }
  
}
