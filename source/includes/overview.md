# Overview

Welcome to the Screendoor API documentation. This is a pre-release API, so be aware that it's subject to change at any time. That said, we welcome any questions, comments, or feedback. For now, just send an email to [support@dobt.co](mailto:support@dobt.co) if you'd like to get in touch.

All of our API endpoints start with `https://screendoor.dobt.co/api/`.

## Authentication

- Authentication is handled by the `api_key` URL parameter.
- Don't have an API key? Get one in Screendoor -> Settings -> API Keys.

## Pagination

```shell
curl --include "https://screendoor.dobt.co/api/sites/1/projects?page=5&v=0&api_key=d9763djh1274"

# Example Response
HTTP/1.1 200 OK
Link: <https://screendoor.dobt.co/api/site/1/projects?page=1>; rel="first">,
  <https://screendoor.dobt.co/api/site/1/projects?page=173>; rel="last">,
  <https://screendoor.dobt.co/api/site/1/projects?page=6>; rel="next">,
  <https://screendoor.dobt.co/api/site/1/projects?page=4>; rel="prev">
Total: 4321
```

We use the link header for pagination. When multiple pages of a resource exist, you'll see headers that look like those in the example response on the right:

## Versioning

The current API version is **0**.

- Specify the API version by setting a `Version: 0` HTTP header
- Alternatively, use the `?v=0` URL parameter
