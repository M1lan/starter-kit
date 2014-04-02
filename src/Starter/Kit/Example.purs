module Starter.Kit.Example where

import Data.Array
import Data.Maybe

-- This module defines a single function diffs, which
-- returns the differences for an increasing array.
--
-- If the input is not increasing, it returns Nothing.
--
-- This contrived example is picked to demonstrate the use
-- of a few standard libraries.

diffs :: [Number] -> Maybe [Number]
diffs [] = return []
diffs [_] = return []
diffs (x : tail@(x' : xs)) | x <= x' = do
  tailDiffs <- diffs tail
  return (x' - x : tailDiffs)
diffs _ = Nothing
