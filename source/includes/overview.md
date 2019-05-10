# Overview

Welcome to the Screendoor API documentation. We welcome any questions, comments,
or feedback. Send an email to [support@dobt.co](mailto:support@dobt.co) if you'd like to get in touch.

All of our API endpoints start with `https://screendoor.dobt.co/api/`.

## Authentication

- Authentication is handled by the `api_key` URL parameter.
- Don't have an API key? Get one in Screendoor -> Settings -> API Keys.

## Pagination

```shell
curl --include "https://screendoor.dobt.co/api/sites/1/projects?page=5&v=1&api_key=d9763djh1274"

# Example Response
HTTP/1.1 200 OK
Link: <https://screendoor.dobt.co/api/site/1/projects?page=1>; rel="first">,
  <https://screendoor.dobt.co/api/site/1/projects?page=173>; rel="last">,
  <https://screendoor.dobt.co/api/site/1/projects?page=6>; rel="next">,
  <https://screendoor.dobt.co/api/site/1/projects?page=4>; rel="prev">
Total: 4321
```

We use the Link header for pagination. When multiple pages of a resource exist, you'll see a header like the one in the example response on the right.

By default, each page will contain up to **25** records, at which point, you'll need to pass a `?page=` parameter in order to retrieve the next page.

You can change the number of records that are returned by adding a `?per_page=` parameter. For performance reasons, we limit this number to 100.

## Versioning

The current API version is **1**.

- Specify the API version by using the `?v=1` URL parameter
- Alternatively, set a `Api-Version: 1` HTTP header

## API Clients

- [Node.js](https://www.npmjs.com/package/screendoor-api-node) (unofficial)
