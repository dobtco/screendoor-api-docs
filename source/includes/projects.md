# Projects

## Create a project

Creates a new project.

```shell
# Example Request
curl https://screendoor.dobt.co/api/sites/1/projects?v=0&api_key=d9763djh1274 \
  -H 'Content-Type: application/json' \
  -X POST \
  -d '
{
  "name": "Hiring by email",
  "description": "<p>The description can include HTML!</p>"
}
'

# Example Response
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

`POST /sites/:site_id/projects`

## Retrieve a single project

Retrieves the details of a specified project.

```shell
# Example Request
curl https://screendoor.dobt.co/api/sites/1/projects/1?v=0&api_key=d9763djh1274

# Example Response
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

## Update a project

Updates the specified project by assigning values to the keys of the `Project` hash. The value of any key you do not provide will be left unchanged.

```shell
# Example Request
curl https://screendoor.dobt.co/api/sites/1/projects/1?v=0&api_key=d9763djh1274 \
  -H 'Content-Type: application/json' \
  -X PUT \
  -d '
{
  "name": "Hiring by email",
  "description": "<p>The description can include HTML!</p>"
}
'

# Example Response
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
}`
```

### HTTP Request

`PUT /sites/:site_id/projects/:project_id`

## Delete a project

Deletes a project.

```shell
# Example Request
curl https://screendoor.dobt.co/api/sites/1/projects/1?v=0&api_key=d9763djh1274 \
  -H 'Content-Type: application/json' \
  -X DELETE

# Example Response
Status: 204 No Content
```

### HTTP Request

`DELETE /sites/:site_id/projects/:project_id`

## List a site's projects

You can see a list of the projects belonging to a specific site.

```shell
# Example Request
curl https://screendoor.dobt.co/api/sites/1/projects?v=0&api_key=d9763djh1274

# Example Response
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

