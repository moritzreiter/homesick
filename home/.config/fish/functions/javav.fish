function javav
  set java_home_cmd '/usr/libexec/java_home 2>/dev/null --failfast --version'
  if ! test (eval $java_home_cmd $argv)
    echo "Version not found"
    return 1
  end
  for current_version in (seq 8 99)
    set path_to_remove (eval $java_home_cmd $current_version)
    if ! test -z $path_to_remove
      set PATH (string match --invert $path_to_remove/bin $PATH)
      echo $PATH
    end
  end
  set -x JAVA_HOME (eval $java_home_cmd $argv)
  set PATH $JAVA_HOME/bin $PATH
end

