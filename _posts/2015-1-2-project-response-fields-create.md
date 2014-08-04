---
category: Project Forms
path: '/projects/:project_id/response_fields'
title: "Add a response field"
type: 'POST'
layout: nil
---

Add a response field to a project's form.

### Request
```
{
  "field_type": "text",
  "label": "Your Approach"
}
```

### Response

```{% include resources/response_field.json %}```
