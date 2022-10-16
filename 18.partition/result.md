 ?column? 
----------
        1
(1 row)

                                                              QUERY PLAN                                                               
---------------------------------------------------------------------------------------------------------------------------------------
 Gather  (cost=1000.00..106422.12 rows=90909 width=8) (actual time=79.142..2460.877 rows=91084 loops=1)
   Workers Planned: 2
   Workers Launched: 2
   ->  Parallel Seq Scan on customers_full  (cost=0.00..96331.22 rows=37879 width=8) (actual time=45.151..2398.224 rows=30361 loops=3)
         Filter: (age = 60)
         Rows Removed by Filter: 3302972
 Planning Time: 9.931 ms
 JIT:
   Functions: 6
   Options: Inlining false, Optimization false, Expressions true, Deforming true
   Timing: Generation 11.416 ms, Inlining 0.000 ms, Optimization 12.794 ms, Emission 104.736 ms, Total 128.947 ms
 Execution Time: 2752.513 ms
(12 rows)

                                                                   QUERY PLAN                                                                    
-------------------------------------------------------------------------------------------------------------------------------------------------
 Gather  (cost=1000.00..27983.45 rows=94828 width=8) (actual time=4.694..1139.369 rows=90941 loops=1)
   Workers Planned: 2
   Workers Launched: 2
   ->  Parallel Seq Scan on customers_60_79 customers  (cost=0.00..17500.65 rows=39512 width=8) (actual time=2.634..1084.984 rows=30314 loops=3)
         Filter: (age = 60)
         Rows Removed by Filter: 575232
 Planning Time: 3.078 ms
 Execution Time: 1148.515 ms
(8 rows)

 ?column? 
----------
        2
(1 row)

                                                         QUERY PLAN                                                         
----------------------------------------------------------------------------------------------------------------------------
 Seq Scan on customers_full  (cost=0.00..169247.74 rows=1809087 width=8) (actual time=3.025..1307.052 rows=1818679 loops=1)
   Filter: (age < 20)
   Rows Removed by Filter: 8181322
 Planning Time: 0.137 ms
 JIT:
   Functions: 2
   Options: Inlining false, Optimization false, Expressions true, Deforming true
   Timing: Generation 0.315 ms, Inlining 0.000 ms, Optimization 0.187 ms, Emission 2.021 ms, Total 2.523 ms
 Execution Time: 1420.466 ms
(9 rows)

                                                             QUERY PLAN                                                              
-------------------------------------------------------------------------------------------------------------------------------------
 Seq Scan on customers_0_19 customers  (cost=0.00..30724.84 rows=1815347 width=8) (actual time=0.222..1618.079 rows=1815347 loops=1)
   Filter: (age < 20)
 Planning Time: 0.234 ms
 Execution Time: 1715.981 ms
(4 rows)

 ?column? 
----------
        3
(1 row)

                                                         QUERY PLAN                                                         
----------------------------------------------------------------------------------------------------------------------------
 Seq Scan on customers_full  (cost=0.00..169247.74 rows=2709085 width=8) (actual time=2.212..1218.981 rows=2728200 loops=1)
   Filter: (age < 30)
   Rows Removed by Filter: 7271801
 Planning Time: 0.051 ms
 JIT:
   Functions: 2
   Options: Inlining false, Optimization false, Expressions true, Deforming true
   Timing: Generation 0.329 ms, Inlining 0.000 ms, Optimization 0.179 ms, Emission 1.727 ms, Total 2.235 ms
 Execution Time: 1361.878 ms
(9 rows)

                                                                 QUERY PLAN                                                                 
--------------------------------------------------------------------------------------------------------------------------------------------
 Append  (cost=0.00..75135.89 rows=2725497 width=8) (actual time=2.262..1848.212 rows=2725511 loops=1)
   ->  Seq Scan on customers_0_19 customers_1  (cost=0.00..30724.84 rows=1815347 width=8) (actual time=1.972..285.723 rows=1815347 loops=1)
         Filter: (age < 30)
   ->  Seq Scan on customers_20_39 customers_2  (cost=0.00..30783.56 rows=910150 width=8) (actual time=0.267..1302.273 rows=910164 loops=1)
         Filter: (age < 30)
         Rows Removed by Filter: 908681
 Planning Time: 0.584 ms
 Execution Time: 1976.201 ms
(8 rows)

 ?column? 
----------
        4
(1 row)

                                                               QUERY PLAN                                                               
----------------------------------------------------------------------------------------------------------------------------------------
 Gather  (cost=1000.00..188656.77 rows=809089 width=8) (actual time=4.579..710.201 rows=816659 loops=1)
   Workers Planned: 2
   Workers Launched: 2
   ->  Parallel Seq Scan on customers_full  (cost=0.00..106747.87 rows=337120 width=8) (actual time=5.628..596.344 rows=272220 loops=3)
         Filter: ((age > 40) AND (age < 50))
         Rows Removed by Filter: 3061114
 Planning Time: 0.123 ms
 JIT:
   Functions: 6
   Options: Inlining false, Optimization false, Expressions true, Deforming true
   Timing: Generation 1.705 ms, Inlining 0.000 ms, Optimization 1.375 ms, Emission 13.587 ms, Total 16.666 ms
 Execution Time: 772.589 ms
(12 rows)

                                                             QUERY PLAN                                                             
------------------------------------------------------------------------------------------------------------------------------------
 Seq Scan on customers_40_59 customers  (cost=0.00..35332.51 rows=817839 width=8) (actual time=1.009..1128.805 rows=818560 loops=1)
   Filter: ((age > 40) AND (age < 50))
   Rows Removed by Filter: 1000341
 Planning Time: 1.524 ms
 Execution Time: 1169.577 ms
(5 rows)

 ?column? 
----------
        5
(1 row)

                                                               QUERY PLAN                                                               
----------------------------------------------------------------------------------------------------------------------------------------
 Gather  (cost=1000.00..188656.77 rows=809089 width=8) (actual time=3.351..685.759 rows=817036 loops=1)
   Workers Planned: 2
   Workers Launched: 2
   ->  Parallel Seq Scan on customers_full  (cost=0.00..106747.87 rows=337120 width=8) (actual time=5.814..585.842 rows=272345 loops=3)
         Filter: ((age > 55) AND (age < 65))
         Rows Removed by Filter: 3060988
 Planning Time: 0.123 ms
 JIT:
   Functions: 6
   Options: Inlining false, Optimization false, Expressions true, Deforming true
   Timing: Generation 1.562 ms, Inlining 0.000 ms, Optimization 1.199 ms, Emission 15.151 ms, Total 17.913 ms
 Execution Time: 760.204 ms
(12 rows)

                                                                QUERY PLAN                                                                 
-------------------------------------------------------------------------------------------------------------------------------------------
 Append  (cost=0.00..74764.38 rows=828661 width=8) (actual time=0.160..759.193 rows=818394 loops=1)
   ->  Seq Scan on customers_40_59 customers_1  (cost=0.00..35332.51 rows=366872 width=8) (actual time=0.159..357.864 rows=363306 loops=1)
         Filter: ((age > 55) AND (age < 65))
         Rows Removed by Filter: 1455595
   ->  Seq Scan on customers_60_79 customers_2  (cost=0.00..35288.56 rows=461789 width=8) (actual time=0.179..294.489 rows=455088 loops=1)
         Filter: ((age > 55) AND (age < 65))
         Rows Removed by Filter: 1361549
 Planning Time: 0.132 ms
 Execution Time: 808.565 ms
(9 rows)

 ?column? 
----------
        6
(1 row)

                                                         QUERY PLAN                                                         
----------------------------------------------------------------------------------------------------------------------------
 Seq Scan on customers_full  (cost=0.00..194247.68 rows=8918163 width=8) (actual time=2.574..1467.268 rows=9001311 loops=1)
   Filter: ((age > 0) AND (age < 100))
   Rows Removed by Filter: 998690
 Planning Time: 0.078 ms
 JIT:
   Functions: 2
   Options: Inlining false, Optimization false, Expressions true, Deforming true
   Timing: Generation 0.371 ms, Inlining 0.000 ms, Optimization 0.186 ms, Emission 2.087 ms, Total 2.645 ms
 Execution Time: 1929.192 ms
(9 rows)

                                                                 QUERY PLAN                                                                  
---------------------------------------------------------------------------------------------------------------------------------------------
 Append  (cost=0.00..239206.92 rows=8991380 width=8) (actual time=10.562..4654.289 rows=8998613 loops=1)
   ->  Seq Scan on customers_0_19 customers_1  (cost=0.00..35263.21 rows=1723551 width=8) (actual time=10.529..308.790 rows=1724497 loops=1)
         Filter: ((age > 0) AND (age < 100))
         Rows Removed by Filter: 90850
   ->  Seq Scan on customers_20_39 customers_2  (cost=0.00..35330.68 rows=1818845 width=8) (actual time=0.187..300.860 rows=1818845 loops=1)
         Filter: ((age > 0) AND (age < 100))
   ->  Seq Scan on customers_40_59 customers_3  (cost=0.00..35332.51 rows=1818901 width=8) (actual time=0.182..389.210 rows=1818901 loops=1)
         Filter: ((age > 0) AND (age < 100))
   ->  Seq Scan on customers_60_79 customers_4  (cost=0.00..35288.56 rows=1816637 width=8) (actual time=0.217..270.133 rows=1816637 loops=1)
         Filter: ((age > 0) AND (age < 100))
   ->  Seq Scan on customers_80_ customers_5  (cost=0.00..53035.06 rows=1813446 width=8) (actual time=1.998..2510.887 rows=1819733 loops=1)
         Filter: ((age > 0) AND (age < 100))
         Rows Removed by Filter: 910538
 Planning Time: 3.240 ms
 JIT:
   Functions: 10
   Options: Inlining false, Optimization false, Expressions true, Deforming true
   Timing: Generation 2.776 ms, Inlining 0.000 ms, Optimization 0.518 ms, Emission 9.552 ms, Total 12.846 ms
 Execution Time: 5135.175 ms
(19 rows)

