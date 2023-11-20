\version "2.22.0"
\language "english"

global = {
  \time 4/4
  \key c \major
}

mBreak = { \break }

\header {
                                %	title = \markup {\medium \caps "Title."}
                                %	poet = ""
                                %	composer = ""

%  meter = \markup {\italic "Gaily."}
                                %	arranger = ""
}
\score {

  \new ChoirStaff {
    <<
      \new Staff = "up"  {
        <<
          \global
          \new 	Voice = "one" 	\relative c' {
            \voiceOne
            \partial 8 s8 | <e c'> g g f  e4 d8 e | c d e f g4. g8 | \mBreak
            g8 c c c c4 c8 c | d e f d s2 | e4 d8_( c) b4 a8_( b) | \mBreak
            c b a g a_( g) f e | f4 a <e g> <d b'> | \partial 8*7 <e c'>2. b'8\rest \fine | \mBreak
          }	% end voice one
          \new Voice  \relative c' {
            \voiceTwo
            c'8 | s1*2 |
            c,2 e | b' <c e>4 d8\mark \markup {\smallCaps "Chorus."} c | g1 |
            c,1 | c2 s | s8*7 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        I8 | am a jol -- ly hunts4 -- man,8 My | voice is shrill and clear,4. Well8 |
        known to drive the stag,4 And8 the | droop -- ing dogs to cheer.4 And8 a | hunt4 -- ing we will |
        go,8 will go, will go,4 And8 a | hunt4 -- ing we will | go.2. 8 |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice \relative c {
                                %\voiceThree
            d8\rest | <c g>1 | <c e>1 |
            e,2 a | g c | c' g |
            a8 g f e f e d c | a'4 f g g, | c g8[ e] c4 d'8\rest | \fine
          } % end voice three

          \new 	Voice {
            %\voiceFour
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
