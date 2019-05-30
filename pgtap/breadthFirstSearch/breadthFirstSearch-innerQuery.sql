\i setup.sql

SELECT plan(315);
SET client_min_messages TO ERROR;


SELECT style_dijkstra('pgr_breadthFirstSearch', ', 2, 3)');
SELECT style_dijkstra('pgr_breadthFirstSearch', ', 2, 3, true)');
SELECT style_dijkstra('pgr_breadthFirstSearch', ', 2, 3, false)');

-- ONE TO ONE
SELECT style_dijkstra('pgr_breadthFirstSearch', ', 2, 3, true)');
-- ONE TO MANY
SELECT style_dijkstra('pgr_breadthFirstSearch', ', 2, ARRAY[3], true)');
-- MANY TO ONE
SELECT style_dijkstra('pgr_breadthFirstSearch', ', ARRAY[2], 3, true)');
-- MANY TO MANY
SELECT style_dijkstra('pgr_breadthFirstSearch', ', ARRAY[2], ARRAY[3], true)');


SELECT finish();
ROLLBACK;