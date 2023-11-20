\version "2.24.0"
\language "english"

global = {  \time 3/4
             \key f \major }
\new Staff {
  \global
  <<
    \new Voice =  "up" \fixed c' {
      \voiceOne
      <d' f'>4 <c' e'> <f bf d'> | c'4. bf8 a4 | \fine
    }
    \new Voice = "down" \fixed c' {
      \voiceTwo
      \stemUp f4. \stemDown f8 s4 | \stemUp <f a> \stemDown f f |
    }
  >>
} % end staff