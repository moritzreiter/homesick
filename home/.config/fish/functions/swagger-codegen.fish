function swagger-codegen
    set repo_path dev/swagger-codegen
    set path_in_repo modules/swagger-codegen-cli/target
    set jar_name swagger-codegen-cli.jar
    set full_path $HOME/$repo_path/$path_in_repo/$jar_name
    java -jar $full_path $argv
end

