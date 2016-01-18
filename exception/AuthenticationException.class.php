<?php

namespace app\exception;

/**
 * Description of AuthenticationException
 *
 * @author thiago
 */
class AuthenticationException extends \app\exception\AppException{
  
  public function __construct($message, $code = 0, Exception $previous = null) {
    $this->setHttp_code_status(403);
    $this->setHttp_status("Forbidden");

    parent::__construct($message, $code, $previous);

  }

  
}
