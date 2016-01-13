<?php

namespace app\exception;

/**
 * Description of AuthenticationException
 *
 * @author thiago
 */
class AuthenticationException extends \app\exception\AppException{
  
  function __construct() {
    $this->setHttp_code_status(403);
    $this->setHttp_status("Forbidden");
  }

  
}
