function gpip
  set PIP_REQUIRE_VIRTUALENV false
  pip $argv
  set PIP_REQUIRE_VIRTUALENV true
end

