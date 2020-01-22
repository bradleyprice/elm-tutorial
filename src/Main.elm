module Main exposing (..)

import Browser
import Html exposing (Html, div, input, label, text)
import Html.Events exposing (onInput)


type alias Model =
    String


type Msg
    = UpdateName String


initialModel : Model
initialModel =
    "Hello World"


update : Msg -> Model -> Model
update msg model =
    case msg of
        UpdateName name ->
            "Hello " ++ name


view : Model -> Html Msg
view model =
    div []
        [ label [] [ text "Your name: " ]
        , input [ onInput UpdateName ] []
        , div [] [ text model ]
        ]


main : Program () Model Msg
main =
    Browser.sandbox
        { init = initialModel
        , view = view
        , update = update
        }
