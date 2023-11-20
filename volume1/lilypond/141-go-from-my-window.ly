\version "2.22.0"
\language "english"

global = {
  \time 4/4
  \key a \major
}

mBreak = { \break }

\header {
  %	title = \markup {\medium \caps "Title."}
  %	poet = ""
  %	composer = ""

  % meter = \markup {\italic "Slowly and smoothly."}
  %	arranger = ""
}
\score {

  \new ChoirStaff {
    <<
      \new Staff = "up"  {
        <<
          \global
          \new 	Voice = "one" 	\fixed c' {
            \voiceOne
            <cs e a>4 a8 b8 cs'4 b8. b16 | <cs a>1 | <e gs b>4 b8 cs'8 d'4 cs'8. cs'16 |  <e gs b>2. b4 | \mBreak
            b4 b8 cs'8 d'4 cs'8( b8) | a8 b8 cs'8 a8 <e gs! b>4 e4 | <e a>4 <cs a>8 <d b>8 <e a cs'>4 <d gs b>4 | <cs a>1 |
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
           \stemUp s2. <d gs>4 | s1 | s2. <e a>4 | s1 | \stemDown
            <e g>2 <d fs>2 | <d fs>4 <cs e>4 s2 | s1*2 |
            \fine
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {
        % verse one
        Go4 from8 my8 win4 -- dow,8. love,16 go;1 Go4 from8 my8 win4 -- dow,8. my16 dear;2. The4
        wind4 and8 the8 rain4 Will4 drive8 you8 back8 a8 --  gain,4 You can4 -- not8 be8 lodg4 -- ed4 here1
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            a,2. e4 | a2 a,2 | e2. a,4 | e2( e,2) |
            e2 b,2 | d4 a,4 e4 d4 | cs4 fs4 e4 e4 | a1 |
            \fine
          } % end voice three
        >>
      } % end staff down
    >>
  } % end choir staff

  \layout{
    \context{
      \Score {
        \omit  BarNumber
        %\override LyricText.self-alignment-X = #LEFT
        \override Staff.Rest.voiced-position=0
      }%end score
    }%end context
  }%end layout

}%end score