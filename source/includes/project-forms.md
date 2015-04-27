# Project forms

## List a project's response fields

```shell
[
  {
    "id": 235,
    "form_id": 42,
    "label": "Your Approach",
    "field_options": {
      "size": "medium",
      "description": "How would you complete this project?"
    },
    "sort_order": 0,
    "required": true,
    "blind": false,
    "admin_only": false,
    "created_at": "2014-07-29T23:42:52.319Z",
    "updated_at": "2014-07-29T23:42:52.319Z",
    "field_type": "paragraph",
    "cid": null
  },
  {
    "id": 236,
    "form_id": 42,
    "label": "Previous Work",
    "field_options": {
      "size": "medium",
      "description": "What qualifies you to work on this project?"
    },
    "sort_order": 1,
    "required": true,
    "blind": false,
    "admin_only": false,
    "created_at": "2014-07-29T23:42:52.327Z",
    "updated_at": "2014-07-29T23:42:52.327Z",
    "field_type": "paragraph",
    "cid": null
  },
  ...
]
```

### HTTP Request

`GET /projects/:project_id/response_fields`

## Add a response field

Add a response field to a project's form.

```shell
curl /projects/:project_id/response_fields/:response_field_id \
  -H 'Content-Type: application/json' \
  -X POST \
  -d '
{
  "field_type": "text",
  "label": "Your Approach"
}
'
```

### HTTP Request

`POST /projects/:project_id/response_fields`

## Update a response field

```shell
curl /projects/:project_id/response_fields/:response_field_id \
  -H 'Content-Type: application/json' \
  -X PUT \
  -d '
{
  "field_type": "text",
  "label": "Your Approach"
}
'
```

### HTTP Request

`PUT /projects/:project_id/response_fields/:response_field_id`

## Delete a response field

Deletes a response field. Note that you will lose any responses to this.

```shell
curl /projects/:project_id/response_fields/:response_field_id \
  -H 'Content-Type: application/json' \
  -X DELETE
```

### HTTP Request

`DELETE /projects/:project_id/response_fields/:response_field_id`

## Batch-update a project's form

Batch-updates the form for a project. Any response fields that don't exist will be added, and any existing fields that aren't present in the request body will be destroyed.

```shell
curl /projects/:project_id/response_fields/:response_field_id/batch \
  -H 'Content-Type: application/json' \
  -X POST \
  -d '
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
'
```

### HTTP Request

`POST /projects/:project_id/response_fields/:response_field_id/batch`

