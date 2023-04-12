#608. Tree Node

#Each node in the tree can be one of three types:

#"Leaf": if the node is a leaf node.
#"Root": if the node is the root of the tree.
#"Inner": If the node is neither a leaf node nor a root node.
#Write an SQL query to report the type of each node in the tree.

#Return the result table in any order.


# Write your MySQL query statement below
select id, case 
when p_id is null then 'Root'
when p_id in (select id from tree) and id in (select p_id from tree) then 'Inner'
ELSE 'Leaf'
end as type
from Tree
