module Helper exposing (..)

import Char
import Html exposing (Html, a, div, h1, h2, h3, h4, h5, h6, text)
import Html.Attributes exposing (href)


joinWords : String -> String -> String
joinWords str1 str2 =
    str1 ++ str2


evalChars : List Char -> (Char -> Bool) -> List Bool
evalChars chars fn =
    List.map fn chars


isUpperChars : List Char -> List Bool
isUpperChars chars =
    evalChars chars Char.isUpper


headers : String -> Html msg
headers content =
    div []
        [ h1 [] [ text content ]
        , h2 [] [ text content ]
        , h3 [] [ text content ]
        , h4 [] [ text content ]
        , h5 [] [ text content ]
        , h6 [] [ text content ]
        ]


hyperlink : String -> String -> Html msg
hyperlink url label =
    a [ href url ] [ text label ]
