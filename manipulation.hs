manipulation.hs


main = do
  print "Compiled!"

frequ :: (Eq a) => [a] -> a -> Int

frequ xs x = length ( filter (==x) xs )



flipIfOdd :: String -> Integer -> String

flipIfOdd xs a = if (a `mod` 2) == 0 then xs else reverse xs


bustrophedonMethod :: [String] -> [String]

bustrophedonMethod [] = []

bustrophedonMethod xs = bustrophedonMethod2 xs 0


bustrophedonMethod2 :: [String] -> Integer -> [String]

bustrophedonMethod2 [] n = []

bustrophedonMethod2 (x:xs) n = (flipIfOdd x n):(bustrophedonMethod2 xs (n + 1))