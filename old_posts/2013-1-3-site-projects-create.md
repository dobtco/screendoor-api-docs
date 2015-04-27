---
category: Projects
path: '/sites/:site_id/projects'
title: 'Create a project'
type: 'POST'
layout: nil
---

Create a new project.

### Request
```
{
  "name": "Hiring by email",
  "description": "<p>The description can include HTML!</p>"
}
```

### Response

```{% include resources/project.json %}```
