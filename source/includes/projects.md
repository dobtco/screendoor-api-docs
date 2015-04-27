# Projects

## List a site's projects

```shell
[
  {
    "id": 1,
    "sequential_id": 1,
    "name": "Hiring by email",
    "slug": "hiring-by-email",
    "description": null,
    "summary": null,
    "specifics": { },
    "visibility": "not_posted",
    "responses_due_at": null,
    "enable_qa": false,
    "questions_due_at": null,
    "require_registration": false,
    "iframe_custom_stylesheet_url": null,
    "iframe_thanks_method": 1,
    "iframe_thanks_custom_message": null,
    "iframe_thanks_redirect_url": null,
    "key_response_field_id": 1,
    "created_at": "2014-05-07T19:19:42.273Z",
    "updated_at": "2014-05-07T19:19:42.273Z",
    "submitted_responses_count": 11,
    "show_respondents": true,
    "show_askers": true,
    "email_responses": 3
  },
  ...
]
```

### HTTP Request
`GET /sites/:site_id/projects`

## Get a single project

```shell
{
  "id": 1,
  "sequential_id": 1,
  "name": "Hiring by email",
  "slug": "hiring-by-email",
  "description": null,
  "summary": null,
  "specifics": { },
  "visibility": "not_posted",
  "responses_due_at": null,
  "enable_qa": false,
  "questions_due_at": null,
  "require_registration": false,
  "iframe_custom_stylesheet_url": null,
  "iframe_thanks_method": 1,
  "iframe_thanks_custom_message": null,
  "iframe_thanks_redirect_url": null,
  "after_response_page": null,
  "after_response_page_html": null,
  "key_response_field_id": 1,
  "created_at": "2014-05-07T19:19:42.273Z",
  "updated_at": "2014-05-07T19:19:42.273Z",
  "submitted_responses_count": 11,
  "show_respondents": true,
  "show_askers": true,
  "email_responses": 3
}
```

### HTTP Request
`GET /sites/:site_id/projects/:project_id`

## Create a project

```shell
curl /sites/:site_id/projects/:project_id \
  -H 'Content-Type: application/json' \
  -X POST \
  -d '
{
  "name": "Hiring by email",
  "description": "<p>The description can include HTML!</p>"
}
'
```

### HTTP Request

`POST /sites/:site_id/projects`

## Update a project

```shell
curl /sites/:site_id/projects/:project_id \
  -H 'Content-Type: application/json' \
  -X PUT \
  -d '
{
  "name": "Hiring by email",
  "description": "<p>The description can include HTML!</p>"
}
'
```

### HTTP Request

`PUT /sites/:site_id/projects/:project_id`

## Delete a project

```shell
curl /sites/:site_id/projects/:project_id \
  -H 'Content-Type: application/json' \
  -X DELETE
```

### HTTP Request

`DELETE /sites/:site_id/projects/:project_id`
