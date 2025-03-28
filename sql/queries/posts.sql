-- name: CreatePost :one
INSERT INTO posts(id, created_at, updated_at, title, description, published_at, url, feed_id)
values($1, $2, $3, $4, $5, $6, $7, $8 )
RETURNING *;

-- name: GetPostFromUser :many
SELECT posts.* FROM posts
JOIN feeds_follow ON posts.feed_id = feeds_follow.feed_id
WHERE feeds_follow.user_id = $1
ORDER BY posts.published_at DESC
LIMIT $2;