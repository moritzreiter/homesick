function javav
    if test $argv = 8
        set -x JAVA_HOME $JAVA_8_HOME
    else if test $argv = 11
        set -x JAVA_HOME $JAVA_11_HOME
    else if test $argv = 14
        set -x JAVA_HOME $JAVA_14_HOME
    end

    # Clear possible existing JDK paths from $PATH
    if test -n "$JAVA_8_HOME"
        set PATH (string match -v $JAVA_8_HOME/bin $PATH)
    end
    if test -n "$JAVA_11_HOME"
        set PATH (string match -v $JAVA_11_HOME/bin $PATH)
    end
    if test -n "$JAVA_14_HOME"
        set PATH (string match -v $JAVA_14_HOME/bin $PATH)
    end

    # Make sure the executables of the current $JAVA_HOME JDK are first on
    # the path. Otherwise /usr/bin/java could get executed instead
    set PATH $JAVA_HOME/bin $PATH
end

