--------------------------------------------------------------------------------------
-- File Name: Sphere.hs
-- Author: Sam
-- mail: samyunwei@163.com
-- Created Time: Thu 09 Feb 2017 07:24:21 PM CST
----------------------------------------------------------------------------
module Geometry.Sphere
(volume
 ,area
) where

volume :: Float -> Float
volume radius = (4.0/3.0) * pi * (radius ^ 3)

area :: Float -> Float
area radius = 4 * pi * (radius ^ 2)
