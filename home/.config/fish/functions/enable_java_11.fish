function enable_java_11
    set java_11_contents_path /Library/Java/JavaVirtualMachines/openjdk-11.0.1.jdk/Contents
    mv $java_11_contents_path/Info.plist.disabled $java_11_contents_path/Info.plist
end

