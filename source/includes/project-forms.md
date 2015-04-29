# Project forms

## Add a response field

Adds a response field to a project's form.

```shell
curl https://screendoor.dobt.co/api/projects/2/response_fields?v=0&api_key=d9763djh1274 \
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

### Example Response
`{
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
}`

## Update a response field

Updates the specified response field by assigning values to the keys of the `Response Field` hash. The value of any key you do not provide will be left unchanged.

```shell
curl https://screendoor.dobt.co/api/projects/2/response_fields/5?v=0&api_key=d9763djh1274 \
  -H 'Content-Type: application/json' \
  -X PUT \
  -d '
{
  "field_type": "text",
  "label": "Your Strategy
}
'
```

### HTTP Request

`PUT /projects/:project_id/response_fields/:response_field_id`

### Example Response
`{
  "id": 235,
  "form_id": 42,
  "label": "Your Strategy",
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
}`

## Batch-update a project's form

Batch-updates the form for a project. Any response fields that don't exist will be added, and any existing fields that aren't present in the request body will be destroyed.

```shell
curl https://screendoor.dobt.co/api/projects/2/response_fields/5/batch?v=0&api_key=d9763djh1274 \
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

### Example Response
`[
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
      "id": 236,
      "label": "Previous Work",
      "field_options": {
        "size": "medium",
        "description": "What qualifies you to work on this project?"
      },
      "required": true,
      "field_type": "paragraph",
    },
    ...
  ]`

## Delete a response field

Deletes a response field. Note that you will lose any responses to this field.

```shell
curl https://screendoor.dobt.co/api/projects/2/response_fields/5?v=0&api_key=d9763djh1274 \
  -H 'Content-Type: application/json' \
  -X DELETE
```

### HTTP Request

`DELETE /projects/:project_id/response_fields/:response_field_id`

### Example Response
`Status: 204 No Content`

## List a project's response fields

Returns a list of response fields to a project with the given `project_id`.

```shell
curl https://screendoor.dobt.co/api/projects/2/response_fields?v=0&api_key=d9763djh1274
```

### HTTP Request

`GET /projects/:project_id/response_fields`

### Example Response
`[
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
]`
