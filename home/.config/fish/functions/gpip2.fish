function gpip2
  set PIP_REQUIRE_VIRTUALENV false
  pip2 $argv
  set PIP_REQUIRE_VIRTUALENV true
end

