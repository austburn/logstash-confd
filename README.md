# Logstash-confd

This is a crazy idea to use [https://github.com/kelseyhightower/confd](confd) to generate dynamic [https://www.elastic.co/products/logstash](Logstash)
configuration.

# Example
`docker run -e ENVIRONMENT=dev -e REGION=dfw logstash-confd`

```
{
       "message"        => "Auth log",
      "@version"        => "1",
    "@timestamp"        => "2016-07-14T17:11:17.225Z",
          "path"        => "/var/log/auth.log",
          "host"        => "dce896cc9c5c",
          "environment" => "dev",
          "region"      => "dfw"
}
```
