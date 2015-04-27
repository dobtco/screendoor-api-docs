---
category: Project Forms
path: '/projects/:project_id/response_fields/:response_field_id'
title: "Update a response field"
type: 'PUT'
layout: nil
---

Updates a response field.

### Request
```
{
  "field_type": "text",
  "label": "Your Approach"
}
```

### Response

```{% include resources/response_field.json %}```
