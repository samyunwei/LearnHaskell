--------------------------------------------------------------------------------------
-- File Name: Cube.hs
-- Author: Sam
-- mail: samyunwei@163.com
-- Created Time: Thu 09 Feb 2017 07:29:59 PM CST
----------------------------------------------------------------------------
module Geometry.Cube
(volume
 ,area
) where

import qualified Geometry.Cuboid as Cuboid
volume :: Float ->Float
volume side = Cuboid.volume side side side

area :: Float -> Float
area side = Cuboid.area side side side
