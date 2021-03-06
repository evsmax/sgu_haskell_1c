--5)
fact :: Int -> Int
fact n = if n == 0 then 1
                      else fact( n - 1 ) * n
list_fact :: Int -> [Int]
list_fact n = case n of
                   0 -> []
                   _ -> list_fact ( n - 1 ) ++ [fact n]
    
--1)
list_nat :: Int -> [Int]
list_nat n = case n of
                  0  -> []
                  _ -> (list_nat(n - 1)) ++ [n]
--2)
list_odd :: Int -> [Int]
list_odd n = if n == 0 then []
                       else if n == 1 then [1]
                                      else if odd n then list_odd (n - 2) ++ [n]
                                      else list_odd ( n - 1 )
--3)
list_evn :: Int -> [Int]
list_evn n = if n == 0 then []
                       else if even n then list_evn (n - 2) ++ [n]
                                      else list_evn ( n - 1 )                
--4)
list_sq :: Int -> [Int]
list_sq n = if n == 0 then []
                      else list_sq ( n - 1 ) ++ [n^2] 
                      
--6)
list_deg_two :: Int -> [Int] 
list_deg_two n = case n of
                      0 -> [1]
                      _ -> list_deg_two( n -1 ) ++ [2^n] 
--7)
delta :: Int -> Int
delta n = case n of
	1 -> 1
	_ -> delta (n - 1) + n

lstDet :: Int -> [Int]
lstDet n = case n of
	0 -> []
	_ -> ( lstDet (n - 1) ) ++ [delta n]
--8)
pyr :: Int -> Int
pyr n = case n of
	1 -> 1
	_ -> delta n + pyr (n - 1)
lstPyr :: Int -> [Int]
lstPyr n = case n of
	0 -> []
	_ -> (lstPyr (n - 1)) ++ [pyr n]
