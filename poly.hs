extract_coefficients :: Integer -> Integer -> [Integer]
extract_coefficients base num = go num
  where
    go :: Integer -> [Integer]
    go 0 = []
    go buffer = buffer `mod` base : go (buffer `div` base) 

poly :: Integer -> Integer -> String
poly _    0   = "0"
poly base num
  | base >= 2 = "p(x = " ++ show base ++ ") = " ++ (foldr1 (\x acc -> x ++ " + " ++ acc) $ reverse $ attach_xs (extract_coefficients base num) 0)
  | otherwise = error "Base must be >= 2."
    where
      attach_xs :: [Integer] -> Int -> [String]
      attach_xs [] _ = []
      attach_xs (x:xs) n
        | x == 0    = rest
        | x == 1    = case n of
          0 -> "1" : rest
          1 -> "x" : rest
          _ -> ("x^" ++ show n) : rest
        | otherwise = case n of
          0 -> show x : rest
          1 -> (show x ++ "x") : rest
          _ -> (show x ++ "x^" ++ show n) : rest
        where rest = attach_xs xs (n+1)
