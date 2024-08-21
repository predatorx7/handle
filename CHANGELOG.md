## 0.4.0

- Add [InterceptorClient.clientExceptionInterceptors] and [ClientExceptionInterceptorClient] to intercept exceptions that happen when sending a request

## 0.3.6

- Change JsonDeserializerOf.call's parameter to dynamic
- Update copyright year in License
- Migrate to super-constructor parameters
- Fix lint errors and update dependencies

## 0.3.5

- Fix async deserialization of request body with Handle client in isolates

## 0.3.4+1

- Fix use of isolates on web

## 0.3.4

- Fix `content-type` from being overriden in rest service.
- Add `updateHeaderIf` to customize inclusion of headers in RequestClient.

## 0.3.3

- Add `HandleClient` to retry request on error
- Throw exceptions when catching errors in convertors and interceptors

## 0.3.2+2

- Update `benchmarks/`
- Fix inherited properties override in `RequestClient`
- Fix catching of errors in `RestResponse.deserializeBody`
- Fix `JsonModelSerializer.merge` where this deserializers from this where merge was invoked where ignored

## 0.3.2+1

- Update documentation
- Add missing `content-type: application/json` header in RestService

## 0.3.2

- Add [RestClient.multipart] for making multipart rest requests

## 0.3.1

- Update package:http version constraint

## 0.3.0

- Upgrade package:http to 1.0.0

## 0.2.0

- Replace `PathJoinCallback onJoinPath` with `PathJoinStrategyCallback? pathJoinStrategy` in [RequestClient]
- Remove unused `JsonModelSerializer? serializer` from [HttpService]
- Change [ServiceConfig] to [HttpServiceConfig] and use [RestServiceConfig] as [config] in [RestService]
- Change [PathJoinStrategy] from a function class to an abstract class interface
- Add test for path join strategies
- Update [TodoService] in tests to extends [RestService]

## 0.1.0

- Initial version.
