module Main exposing (..)

import Html exposing (Html, Attribute, beginnerProgram, text, div, input)
import Html.Attributes exposing (..)
import Html.Events exposing (onInput)
import String


main =
    beginnerProgram { model = "", view = view, update = update }



-- UPDATE


type Msg
    = NewContent String


update (NewContent content) oldContent =
    content



-- VIEW


view content =
    div []
        [ input [ placeholder "Text to odd", onInput NewContent, myStyle ] []
        , div [ myStyle ] [ text <| oddString content ]
        ]


takeNLoop : Int -> List a -> List a
takeNLoop n list =
    case list of
        [] ->
            []

        x :: xs ->
            if n % 2 == 1 then
                x :: takeNLoop (n + 1) xs
            else
                takeNLoop (n + 1) xs


takeOdd : List a -> List a
takeOdd =
    takeNLoop 0


oddString : String -> String
oddString str =
    str
        |> String.toList
        |> takeOdd
        |> String.fromList


myStyle =
    style
        [ ( "width", "100%" )
        , ( "height", "40px" )
        , ( "padding", "10px 0" )
        , ( "font-size", "2em" )
        , ( "text-align", "center" )
        ]
