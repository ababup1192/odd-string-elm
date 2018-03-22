module Tests exposing (..)

import Test exposing (..)
import TestExp exposing (..)
import Main exposing (takeOdd, oddString)


--  target modules


all : Test
all =
    describe "Main module Test"
        [ "takeOdd Test1"
            => takeOdd [ 1, 2, 3, 4, 5, 6 ]
            === [ 2, 4, 6 ]
        , "takeOdd Test2"
            => takeOdd [ 'a', 'b', 'c', 'd', 'e', 'f' ]
            === [ 'b', 'd', 'f' ]
        , "takeOdd Test3"
            => takeOdd []
            === []
        , "oddString Test1"
            => oddString "abcdef"
            === "bdf"
        , "oddString Test2"
            => oddString ""
            === ""
        ]
