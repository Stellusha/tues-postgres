SELECT
    m.created_at,
    u.username,
    m.text
FROM messages AS m
JOIN users AS u
    ON m.user_id = u.id
WHERE m.channel_id = 1
ORDER BY m.created_at DESC
LIMIT 20;

SELECT
    u.username,
    COUNT(m.id) AS message_count
FROM users AS u
LEFT JOIN messages AS m
    ON u.id = m.user_id
GROUP BY u.id, u.username
ORDER BY u.username;