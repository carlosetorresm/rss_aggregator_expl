-- name: CreateFeedFollow :one
  INSERT INTO feeds_follow(id, created_at, updated_at, user_id, feed_id)
  VALUES($1,$2,$3,$4,$5)
  RETURNING *;

-- name: GetFeedFollows :many
  SELECT * FROM feeds_follow WHERE user_id=$1;

-- name: DeleteFeedFollows :exec
  DELETE FROM feeds_follow where id = $1 and user_id=$2;