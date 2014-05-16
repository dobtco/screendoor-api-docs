---
title: 'Pagination'

layout: nil
---

We use the link header for pagination. When multiple pages of a resource exist, you'll see headers that look like this:

```
$ curl --include 'https://screendoor.dobt.co/api/site/1/projects?page=5'
HTTP/1.1 200 OK
Link: <https://screendoor.dobt.co/api/site/1/projects?page=1>; rel="first">,
  <https://screendoor.dobt.co/api/site/1/projects?page=173>; rel="last">,
  <https://screendoor.dobt.co/api/site/1/projects?page=6>; rel="next">,
  <https://screendoor.dobt.co/api/site/1/projects?page=4>; rel="prev">
Total: 4321
```