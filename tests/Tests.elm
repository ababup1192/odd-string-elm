module Tests exposing (..)

import Test exposing (..)
import TestExp exposing (..)
import Main exposing (takeOddFirst, oddString)


--  target modules


all : Test
all =
    describe "Main module Test"
        [ "takeOdd Test1"
            => takeOddFirst [ 1, 2, 3, 4, 5, 6 ]
            === [ 2, 4, 6 ]
        , "takeOdd Test2"
            => takeOddFirst [ 'a', 'b', 'c', 'd', 'e', 'f' ]
            === [ 'b', 'd', 'f' ]
        , "takeOdd Test3"
            => takeOddFirst []
            === []
        , "oddString Test1"
            => oddString "abcdef"
            === "bdf"
        , "oddString Test2"
            => oddString ""
            === ""
        ]
