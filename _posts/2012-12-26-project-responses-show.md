---
category: Responses
path: '/projects/:project_id/responses/:response_id'
title: "Get a response"
type: 'GET'

layout: nil
---

Get the specified response. Note the "response_format" URL parameter, which can be either "raw", "text", or "html".

### Request
```
{
  "response_format": "raw"
}
```

### Response

```{% include resources/response.json %}```
