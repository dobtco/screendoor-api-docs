---
category: Project Forms
path: '/projects/:project_id/response_fields/:response_field_id/batch'
title: "Batch-update a project's form"
type: 'POST'
layout: nil
---

Batch-updates the form for a project. Any response fields that don't exist will be added, and any existing fields that aren't present in the request body will be destroyed.

### Request
```
{
  "response_fields": [
    {
      "id": 235,
      "label": "Your Approach",
      "field_options": {
        "size": "medium",
        "description": "How would you complete this project?"
      },
      "required": true,
      "blind": false,
      "admin_only": false,
      "field_type": "paragraph",
    },
    {
      "label": "Previous Work",
      "field_options": {
        "size": "medium",
        "description": "What qualifies you to work on this project?"
      },
      "required": true,
      "field_type": "paragraph",
    }
  ]
}
```

### Response

```{% include resources/response_fields.json %}```
