\version "2.22.0"
\language "english"

global = {
  \time 6/8
  \key g \major
}

mBreak = { \break }

\header {
  %	title = \markup {\medium \caps "Title."}
  %	poet = ""
  %	composer = ""

  meter = \markup {\italic "Moderate time."}
  %	arranger = ""
}
\score {

  \new ChoirStaff {
    <<
      \new Staff = "up"  {
        <<
          \global
          \new 	Voice = "one" 	\fixed c' {
            \partial 8 g8 |
            <b, e g>4 a8 <ds fs c'>4 b8 |
            <e b e'>4 b8 e'4 b8 |
            <e g>4 a8 <b, e b(>a8) g8 |
            \partial 8*5 <a, ds fs>4. <g, e>4 \bar ":|.:"| \mBreak
            \partial 8 e8 |
            <b, e g(>fs8) g8 <d fs a>4 a8 |
            <d g b>4 c'8 <d a d'>4 d'8 |
            <e g c'>4 <d fs b>8 <c e a>4 <b, g>8 |
            \partial 8*5 <a, ds fs>4. <g, e>4 \bar ":|." |
          }	% end voice one
        >>
      } % end staff up
      
      \new Lyrics \lyricmode {	% verse one
        Fain8 would4 I8 have4 a8 pret-4ty8 thing4 To8 give4 un-8to4 my8 La-4.dy,4
        I8 name4 no8 thing,4 And8 mean4 no8 thing,4 But16 as16 pretty4 a8 thing4 as8 may4. be.4
      }	% end lyrics verse one
      
      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            r8 |
            e4. b,4. |
            g,2. |
            e,4. g,4. |
            b,4. e4 |
            r8 |
            e4. d4. |
            g,4. fs,4. |
            e,4. a,4. |
            b,4. e4 
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