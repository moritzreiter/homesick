function swagger-editor
    # Install with `docker pull swaggerapi/swagger-editor`
    docker run \
        --detach --rm \
        --name swagger-editor \
        --publish 80:8080 \
        swaggerapi/swagger-editor
end

