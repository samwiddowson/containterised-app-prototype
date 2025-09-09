TASK_API_VERSION=0.1.4

TF_VAR_task_api_image_id=$(docker image ls task-api:v0.1.4 --format '{{.ID}}')
TF_VAR_task_ui_image_id=$(docker image ls task-ui --format '{{.ID}}')

terraform apply -auto-approve \
    -var "task_api_image_id=${TF_VAR_task_api_image_id}" \
    -var "task_ui_image_id=${TF_VAR_tsk_ui_image_id}"
