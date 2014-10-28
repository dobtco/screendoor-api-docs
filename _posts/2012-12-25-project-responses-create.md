---
category: Responses
path: '/projects/:project_id/responses/:response_id'
title: 'Create a response'
type: 'POST'

layout: nil
---

This method allows the user to create a response.

### Request
```
{
  "response_fields": {
    "1": "Vivian Cronin",
    "2": "emmanuelle@goyette.co.uk",
    "3": "New application for your job on Startuply"
  },
  "skip_email_confirmation": true, // default: false
  "skip_notifications": true, // default: false
  "skip_validation": true, // default: false
  "status": "Starred",
  "labels": ["Great", "Needs more information"]
}
```

### Response

```{% include resources/response.json %}```
