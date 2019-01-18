function javav
    if test $argv = 8
        set -x JAVA_HOME $JAVA_8_HOME
    else if test $argv = 11
        set -x JAVA_HOME $JAVA_11_HOME
    end

    # Clear possible existing JDK paths from $PATH
    set PATH (string match -v $JAVA_8_HOME/bin $PATH)
    set PATH (string match -v $JAVA_11_HOME/bin $PATH)

    # Make sure the executables of the current $JAVA_HOME JDK are first on
    # the path. Otherwise /usr/bin/java could get executed instead
    set PATH $JAVA_HOME/bin $PATH
end

