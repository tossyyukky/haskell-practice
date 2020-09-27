module RLE where

import Data.List ( group )

-- | ランレングス圧縮
--
-- >>> rle ""
-- ""
-- >>> rle "A"
-- "A1"
-- >>> rle "AAABBCCCAAA"
-- "A3B2C3A3"
--

rle :: String -> String
--rle = undefined

-- 命令形言語っぽい書き方
--rle "" = ""
--rle (h:t) = aux 1 h t where -- 最初の1文字を覚える、1文字出てるので連長は1
--    aux :: Int -> Char -> String -> String
--    aux runLength prevChar "" = prevChar : show runLength           -- 残りがなくなったら終わり
--    aux runLength prevChar (c:s)                                    -- 残りがある場合
--        | c == prevChar = aux (runLength + 1) prevChar s            -- 同じ文字なら連長をカウントアップ
--        | otherwise     = prevChar : shows runLength (aux 1 c s)    -- 違う文字なら新たに1からカウント

-- Haskellらしい書き方
rle = concatMap (\s -> head s : show (length s)) . group