WITH anon_2 AS 
(SELECT release.id AS id, subscribable.title AS title 
FROM release JOIN subscribable ON release.id = subscribable.id), 
anon_1 AS 
(SELECT project.id AS project_id, subscribable.title AS project_title, batch.id AS batch_id, batch.title AS batch_title, anon_2.id AS release_id, anon_2.title AS release_title 
FROM batch LEFT OUTER JOIN (subscribable JOIN project ON subscribable.id = project.id) ON batch.project_id = project.id JOIN release_project ON release_project.project_id = project.id JOIN anon_2 ON anon_2.id = release_project.release_id)
 SELECT * 
FROM anon_1