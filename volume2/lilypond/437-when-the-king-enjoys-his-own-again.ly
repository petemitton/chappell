\version "2.22.2"
\language "english"

global = {
  \time 4/4
  \key a \major
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
            %\voiceOne
            \partial 4 e | <cs e> e <e a> a | <gs b>8^( cs') d'^( e') <a cs'>4 b8^( cs') | <a d'>4 fs <e gs> <e gs d'> | b4. a8 <cs a>4 e | \mBreak
            <cs e>4 e <e a> a | <gs b>8^( cs') d'( e') <a cs'>4 b8^( cs') | <a d>4 fs <e gs> <e gs cs'> | b4. a8 <cs a>4 b | \mBreak
            <e gs b>4 gs8 a b4 e | <gs_( b>8 a) b cs' b4 e | <e b_(>8 a) b_( cs') <e b>4 <ds a_(>8 gs) | fs4. e8 <gs, e>4 e | \mBreak
            <e b e'>4 e'8 d' <e a cs'>4 <e b_(>8 a) | <gs b>8^( cs') d' e' <a cs'>4 b8 cs' | <a d'>4 fs <e gs> <e gs cs'> | \partial 2. b4. a8 <cs a>4 | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s4 | s1*3 | <d gs>4 s2. |
            s1*3 | <d gs>4 s2. |
            s1*3 | \stemUp <a, d>4 s2. |
            s1*3 | \stemDown <d gs>4 s2 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        What4 | \markup { \caps "Book" }4 -- \markup { \caps "er" } can prog -- nost -- ti -- cate Con -- cern -- ing kings or | king4. -- doms’8 fate?4 I |
        think4 my -- self to | be as wise As | he that ga -- zeth | on4. the8 skies.4 My |
        skill4 goes8 be -- yond4 the | depths of8 a \markup { \caps "Pond," }4 Or | \markup { \caps "Ri" } -- \markup { \caps "vers" } in the | great4. -- est8 rain,4 Where-
        -by4 I8 can tell4 All | things will8 be well,4 When8 the | king4 en -- joys his | own4. a8 -- gain.4 |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            r4 | a,2 cs | e a4 gs | fs d e e, | a, e, a,, r |
            a,2 cs | e a4 gs | fs d e e, | a, e, a,, r |
            e2. e,4 | e2. 4 | <b, gs>2 4 <b, fs> | e b, e, r |
            gs,2 a,4 cs | e2 a4 gs | fs d e e, | a e, a,, | \fine
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