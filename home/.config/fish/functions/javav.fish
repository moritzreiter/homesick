function javav
    if test $argv = 11
        set -x JAVA_HOME $JAVA_11_HOME
    else if test $argv = 16
        set -x JAVA_HOME $JAVA_16_HOME
    end

    # Clear possible existing JDK paths from $PATH
    if test -n "$JAVA_11_HOME"
        set PATH (string match -v $JAVA_11_HOME/bin $PATH)
    end
    if test -n "$JAVA_16_HOME"
        set PATH (string match -v $JAVA_16_HOME/bin $PATH)
    end

    # Make sure the executables of the current $JAVA_HOME JDK are first on
    # the path. Otherwise /usr/bin/java could get executed instead
    set PATH $JAVA_HOME/bin $PATH
end

