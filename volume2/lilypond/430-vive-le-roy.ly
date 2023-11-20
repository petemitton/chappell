\version "2.22.0"
\language "english"

global = {
  \time 3/4
  \key g \major
}

mBreak = { \break }
lalign = { \once \override  LyricText.self-alignment-X = #LEFT }
dynamicsX =
#(define-music-function (offset)(number?)
   #{
     \once \override DynamicText.X-offset = $offset
     \once \override DynamicLineSpanner.Y-offset = #0
   #})
hyphen = { \once \override LyricHyphen.minimum-distance = #1.0 }

\header {
  %	title = \markup {\medium \caps "Title."}
  %	poet = ""
  %	composer = ""

  meter = \markup {\italic ""}
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
              \repeat volta 2 { <b, d g> <b, g> <b, g> | c'4._( b8) <g c'>4 | c'4. d'8 <e a c'>4 | <d g b>2 <fs a>4 | <b, g> <b, g> <d a> | \mBreak
              <d g b>4 <g c'> <g e'> | <g d'> <e c'>4. <g b>8 | <fs a>2. } | \repeat volta 2 { <g d'>4 4 <g e'> | d'4.^( c'8) <g b>4 | \mBreak 
              c'4. d'8 <d b>4 | <fs a>2 d4\p | g4. fs8 <b, g>4 | <fs a>2 d4 | <d g>4. fs8 <b, g>4 | \mBreak
              <fs a>2 d4\f  | b4. c'8 <g d'>4 | c'4.( d'8) <g b>4 | <e g b> a4. g8 | <b, g>2. | } \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s2. | \stemUp <c g>4 s2 | <e a>4 s2 | s2.*2 |
            s2.*4 | g4 s2 |
            s2.*2 | d4 s2 | s2.*2 |
            s2. | <d g>4 s2 | fs4 s2 | s4 <c fs>4 s4 | s2. |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        What4 tho’ the zea2 -- lots4 | pull4. down8 the4 pre2 -- lates,4 | Push4 at the
        pul4 -- pit, and kick at4. the8 crown,2. | Shall4 not the | Round2 -- head4 |
        soon4. be8 con4 -- found2 -- ed?4 | Sa,4. sa,8 sa,4 | Say2 boys,4 | Ha,4. ha,8 ha,4 |
        ha,2 boys,4 | Then4. we’ll8 re4 -- turn2 with4 | tri4 -- umph4. and8 | joy.2. |
      }	% end lyrics verse one
      \new Lyrics \lyricmode { % verse two
        Shall4 we then | ne2 -- ver4 | once4. more8 en4 -- dea2 -- vour4 | And strive to |
        pur4 -- chase our | an -- cient4. re8 -- nown?2. | Then4 we’ll be | mer4. -- ry,8 drink4 |
        cla4. -- ret8 and4 | sher2 -- ry,4 | Then4. we8 will4 | sing,2 boys,4 | God4. bless8 the4 |
        king,2 boys,4 | Cast4. up8 your4 caps,2 and4 | cry4 \markup{ \italic "Vive" }4. \markup{ \italic "le" }8 | \markup{ \italic "Roy" }2. |
      } % end verse two
      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            g,4 g fs | e2 4 | a,2 4 | d2. | e4 e fs |
            g4 e c | b, a,2 | d2. | b,4 b, c | b,2 e4 |
            c2 g4 | d2 d8 c | b,2 e4 | d2 d8 c | b,2 e4 |
            d2 fs,4 | g,2 b,4 | a,2 g,4 | c4 d2 | g2. | \fine
          } % end voice three

          \new 	Voice {
            \voiceFour
          }	% end voice four

        >>
      } % end staff down
    >>
  } % end choir staff

  \layout{
    \context{
      \Score {
        \omit  BarNumber
        %\override LyricText.self-alignment-X = #LEFT
      }%end score
    }%end context
  }%end layout

  \midi{}

}%end score