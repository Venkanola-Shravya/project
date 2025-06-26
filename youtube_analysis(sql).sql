
-- Average Views per Category
SELECT category, AVG(views) AS avg_views
FROM youtube_trending
GROUP BY category
ORDER BY avg_views DESC;

-- Count of Videos per Category
SELECT category, COUNT(*) AS video_count
FROM youtube_trending
GROUP BY category;

-- Trending Duration per Video
SELECT video_id, MAX(trending_date) - MIN(trending_date) AS duration_days
FROM youtube_trending
GROUP BY video_id;
