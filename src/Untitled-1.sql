WITH anon_2 AS 
(
  SELECT 
  project.id AS id, 
  project.status AS status, 
  subscribable.title AS title, 
  release_project.batch AS batch,
  release_project.release_id as release_id
  FROM subscribable 
  JOIN project ON subscribable.id = project.id 
  LEFT OUTER JOIN release_project ON project.id = release_project.project_id
)
 SELECT anon_1.id AS anon_1_id, anon_1.status AS anon_1_status, anon_1.title AS anon_1_title, anon_1.batch AS anon_1_batch 
FROM anon_2 AS anon_1