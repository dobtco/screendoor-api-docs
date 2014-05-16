---
category: Responses
path: '/projects/:project_id/responses/:response_id'
title: 'Update a response'
type: 'PUT'

layout: nil
---

This method allows the user to update a response.

### Request
```
{
  "response_fields": {
    "3": "New application for your job on Startuply"
  },
  "force_validation": false,
  "status": "Starred",
  "labels": ["Needs more information"] // any labels not included will be removed
}
```

### Response

```{% include resources/response.json %}```
