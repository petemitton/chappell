\version "2.24.0"
\language "english"

global = {
  \time 4/4
  \key ef \major
}

mBreak = { }

\header {
  %	title = \markup {\medium \caps "Title."}
  %	poet = ""
  %	composer = ""

  %	meter = \markup {\italic ""}
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
            <g, ef>4. f8 <ef g>4<ef af>4|
            <d bf>4. <ef c'>8 <f d'>4<d f bf>4|
            c'8( d'8) ef'4 d'4 c'4 |
            <ef bf>2. <ef bf>4 |\mBreak
             af4 g4 f4 d4 |
            ef4. f8 g8( af8) <ef bf>4 |
            af4 g4 <af, f>4 <af, bf, d>4 |
            <g, bf, ef>1 |
            <g, ef>4 ef8 f8 <ef g>4 <ef af>4|  \mBreak
            bf8. a!16 bf8. c'16 bf4 <d f bf>4|
            c'8( d'8) s2.|
            bf8. a!16 bf8. c'16 bf4 <d ef bf>4 | \mBreak
            <c ef af>4 <bf, g>4 f4 d4 | 
            ef4. f8 g8( af8) <ef bf>4 |
            <c ef af>4 <bf, ef g>4 <bf, d f>4 <af, bf, d>4|
            ef8. d16 ef8. f16 ef2 \fine |
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s1|
            s1|
            <ef af>4<ef af>4 <ef af>4<ef af>4|
            af4 g8 f8  g4 s4|
          c4 bf,4 af,2 |
           g,2. s4 |
             c2 s2 |
            s1|
            s1|
             d4 s2. |
             <ef af>4 <ef af ef'>4 <ef af d'>4 <ef af c'>4|
           <ef g>4 s2.|
           s2 af,2 | 
             g,2. s4 |
            s1|
             <g, bf,>4 s2.|
          } % end voice two
        >>
      } % end staff up
      
      \new Lyrics \lyricmode {	% verse one
        We4. be8 three4 poor4 | ma4. -- ri8 -- ners,4 New4 -- ly4 come4 from4 the4 seas;2. We4 |
        spend4 our4 lives4 in4 | jeo4. -- par8 -- dy,4 While4 | o4 -- thers4 live4 at4 | ease.1 | Shall4 we8 go8 dance4 the4
        round,8. the16 round,8. the16 round?4 Shall4 | we4 go4 dance4 the4 | round,8. the16 round,8. the16 round?4 And4
        he4 that4 is4 a4 bul4. -- ly8 boy,4 Come4 | pledge4 me4 on4 this4 | ground,8. a16 ground,8. a16 ground.2 |
      }	% end lyrics verse one
      
      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
ef2 d4 c4 |
 bf,2. bf,4 |
 af,4 c4 bf,4 af,4 |
 ef2. g,4 |
 af,2 bf,2 |
 c2. g,4 |
 af,2 bf,4 bf,4 |
 ef,1 |
 ef2 d4 c4 |
 bf,2. bf,4 |
 af,4 c4 bf,4 af,4 |
 ef2. g,4 |
 af,2 bf,2 |
 c2. g,4 |
 af,4 ef,4 bf,4 bf,4 |
 ef,1 | \fine
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