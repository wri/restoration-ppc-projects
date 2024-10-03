SELECT vp.uuid , 
	vp.framework_key , 
	vp.organisation_id , 
	o.name AS organization_name ,
	vp.name AS project_name,
	vp.country ,
	vp.planting_end_date , 
	vp.total_hectares_restored_goal ,
	vp.trees_grown_goal ,
	vp.survival_rate ,
	vp.year_five_crown_cover 
FROM v2_projects vp 
INNER JOIN organisations o ON vp.organisation_id = o.id 
WHERE vp.framework_key = 'ppc' 
	AND vp.status = 'approved'
	AND vp.uuid NOT IN 
		('8a615385-b978-43af-8283-e6d0646b0b50',
		'f1dd2ed1-37cd-46c6-b14d-5dcc490864cd',
		'1a5e4617-cd15-4d7f-abec-cee7464f0f56',
		'96bd90c6-42b9-402f-bd4b-b4ceb65845fb',
		'e180f9ee-8f9f-495d-a3e0-d6ea6369f744',
		'67a402f3-d5b6-442d-a7ae-9ec3137e20f0',
		'ea38e1b5-e69a-40d6-8030-e4abfc6f7841')
ORDER BY organisation_id, project_name