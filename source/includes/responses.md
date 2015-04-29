# Responses

## Create a response

Creates a response to the specified project.

```shell
curl https://screendoor.dobt.co/api/projects/2/responses?v=0&api_key=d9763djh1274 \
  -H 'Content-Type: application/json' \
  -X POST \
  -d '
{
  "response_fields": {
    "1": "Vivian Cronin",
    "2": "emmanuelle@goyette.co.uk",
    "3": "New application for your job on Startuply",
    "4": "To Whom it May Concern: I am very interested in working at your company. The widgets you make are AMAZING, and I would love to be a part of it. I have many skills, but the most important ones are my abilities to collect information from people, screen filter it effectively, select the right options, and follow through with the right options quickly. Plus, I even know what to do with the options we did not select. Adding me to your team means saving time, saving money and getting back to doing the work you love doing.\n"
  },
  "skip_email_confirmation": true,
  "skip_notifications": true,
  "skip_validation": true,
  "status": "Starred",
  "labels": ["Great", "Needs more information"]
}
'
```

### HTTP Request

`POST /projects/:project_id/responses`

### Options

| Parameter | Default | Description |
| --- | --- | --- |
| skip_email_confirmation | false |  |
| skip_notifications | false |  |
| skip_validation | false |  |
| status | *set inside Screendoor* |  |
| labels | [] | |

### Example Response

`{
  "id": 3,
  "sequential_id": 3,
  "project_id": 1,
  "pretty_id": "ykylz0kz",
  "submitted_at": "2014-05-07T19:19:43.230Z",
  "responses": {
      "1": "Vivian Cronin",
      "2": "emmanuelle@goyette.co.uk",
      "3": "New application for your job on Startuply",
      "4": "To Whom it May Concern: I am very interested in working at your company. The widgets you make are AMAZING, and I would love to be a part of it. I have many skills, but the most important ones are my abilities to collect information from people, screen filter it effectively, select the right options, and follow through with the right options quickly. Plus, I even know what to do with the options we did not select. Adding me to your team means saving time, saving money and getting back to doing the work you love doing.\n"
  },
  "rating_aggregates": {},
  "average_rating": null,
  "num_ratings": 0,
  "created_at": "2014-05-07T19:19:43.280Z",
  "updated_at": "2014-05-07T19:20:51.485Z",
  "status": "Starred",
  "labels": [],
  "user": null,
  "assigned_to_user": null
}`

## Retrieve a single response

Retrieves a response with the given `:response_id`.

```shell
curl https://screendoor.dobt.co/api/projects/2/responses/3?v=0&api_key=d9763djh1274
```

### HTTP Request

`GET /projects/:project_id/responses/:response_id`

### Query Parameters

| Parameter | Default | Description |
| --- | --- | --- |
| response_format | raw | `raw`, `text`, or `html` |

### Example Response

`{
  "id": 3,
  "sequential_id": 3,
  "project_id": 1,
  "pretty_id": "ykylz0kz",
  "submitted_at": "2014-05-07T19:19:43.230Z",
  "responses": {
      "1": "Vivian Cronin",
      "2": "emmanuelle@goyette.co.uk",
      "3": "New application for your job on Startuply",
      "4": "To Whom it May Concern: I am very interested in working at your company. The widgets you make are AMAZING, and I would love to be a part of it. I have many skills, but the most important ones are my abilities to collect information from people, screen filter it effectively, select the right options, and follow through with the right options quickly. Plus, I even know what to do with the options we did not select. Adding me to your team means saving time, saving money and getting back to doing the work you love doing.\n"
  },
  "rating_aggregates": {},
  "average_rating": null,
  "num_ratings": 0,
  "created_at": "2014-05-07T19:19:43.280Z",
  "updated_at": "2014-05-07T19:20:51.485Z",
  "status": "Starred",
  "labels": [],
  "user": null,
  "assigned_to_user": null
}`

## Update a response

Updates the specified response.

```shell
curl https://screendoor.dobt.co/api/projects/2/responses/2?v=0&api_key=d9763djh1274 \
  -H 'Content-Type: application/json' \
  -X PUT \
  -d '
{
  "response_fields": {
    "1": "Veronica Cronin"
  },
  "status": "Accepted"
}
'
```

### HTTP Request

`PUT /projects/:project_id/responses/:response_id`

### Options

| Parameter | Default | Description |
| --- | --- | --- |
| force_validation | false | |
| status | |  |
| labels | | |

### Example Response
`{
  "id": 3,
  "sequential_id": 3,
  "project_id": 1,
  "pretty_id": "ykylz0kz",
  "submitted_at": "2014-05-07T19:19:43.230Z",
  "responses": {
      "1": "Vivian Cronin",
      "2": "emmanuelle@goyette.co.uk",
      "3": "New application for your job on Startuply",
      "4": "To Whom it May Concern: I am very interested in working at your company. The widgets you make are AMAZING, and I would love to be a part of it. I have many skills, but the most important ones are my abilities to collect information from people, screen filter it effectively, select the right options, and follow through with the right options quickly. Plus, I even know what to do with the options we did not select. Adding me to your team means saving time, saving money and getting back to doing the work you love doing.\n"
  },
  "rating_aggregates": {},
  "average_rating": null,
  "num_ratings": 0,
  "created_at": "2014-05-07T19:19:43.280Z",
  "updated_at": "2014-05-07T19:20:51.485Z",
  "status": "Accepted",
  "labels": [],
  "user": null,
  "assigned_to_user": null
}`

## Delete a response

Deletes a response with the given `:response_id`.

```shell
curl https://screendoor.dobt.co/api/projects/2/responses/3?v=0&api_key=d9763djh1274 \
  -H 'Content-Type: application/json' \
  -X DELETE
```

### HTTP Request

`DELETE /projects/:project_id/responses/:response_id`

### Example Response
`Status: 204 No Content`

## List a project's responses

Returns a list of responses to a specified project.

```shell
curl https://screendoor.dobt.co/api/site/1/projects/2/responses?v=0&api_key=d9763djh1274
```

### HTTP Request

`GET /projects/:project_id/responses`

### Example Response
`[
  {
    "id": 3,
    "sequential_id": 3,
    "project_id": 1,
    "pretty_id": "ykylz0kz",
    "submitted_at": "2014-05-07T19:19:43.230Z",
    "responses": {
        "1": "Vivian Cronin",
        "2": "emmanuelle@goyette.co.uk",
        "3": "New application for your job on Startuply",
        "4": "To Whom it May Concern: I am very interested in working at your company. The widgets you make are AMAZING, and I would love to be a part of it. I have many skills, but the most important ones are my abilities to collect information from people, screen filter it effectively, select the right options, and follow through with the right options quickly. Plus, I even know what to do with the options we did not select. Adding me to your team means saving time, saving money and getting back to doing the work you love doing.\n",
        "5": "3"
    },
    "rating_aggregates": {},
    "average_rating": null,
    "num_ratings": 0,
    "created_at": "2014-05-07T19:19:43.280Z",
    "updated_at": "2014-05-07T19:20:51.485Z",
    "status": "Starred",
    "labels": [],
    "user": null,
    "assigned_to_user": null
  },
  ...
]`

