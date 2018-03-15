function gpip
  set PIP_REQUIRE_VIRTUALENV false
  pip3 $argv
  set PIP_REQUIRE_VIRTUALENV true
end

