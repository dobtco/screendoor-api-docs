---
category: Projects
path: '/sites/:site_id/projects/:project_id'
title: 'Update a project'
type: 'PUT'
layout: nil
---

Updates the specified project.

### Request
```
{
  "name": "Hiring by email",
  "description": "<p>The description can include HTML!</p>"
}
```

### Response

```{% include resources/project.json %}```
