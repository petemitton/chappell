\version "2.22.0"
\language "english"

global = {
  \time 3/4
  \key f \major
}

mBreak = { \break }
lalign = { \once \override  LyricText.self-alignment-X = #LEFT }

\header {
                                %	title = \markup {\medium \caps "Title."}
                                %	poet = ""
                                %	composer = ""

%  meter = \markup {\italic "Smoothly."}
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
            \partial 4. f8_\f \noBeam <c a> f | <c g c'>4. d'8 <g e'> c' | <f c' f'>4. <f a>8 <f bf> <f a c'> | <f bf d'>4. <a c'>8 <g bf> <f a> | \mBreak
            <e g>2 <g c'>4^\p | <d b!>4. <e c'>8 <f d'> <d b> | <e c'>4. c'8^\f <e g> a | <d bf!>4. <c a>8 <bf, g> <d f> | <cs e>4. e8 <a, f> d | \mBreak
            <g, d g>4. f8 <bf, e> d | c2 <c f c'>4^\p | <d g bf>4. <c a>8 <bf, e g> <c a> | \partial 4. <a, f>4. \fine |
          }	% end voice one
          \new Voice  \fixed c' {
            %\voiceTwo
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        I’ll8 tell thee, | Dick,4. where8 I have | been,4. Where8 I the | ra4. -- rest8 things have |
        seen,2 Oh!4 | things4. be8 -- yond com -- pare.4. Such8 sights a -- gain4. can8 -- not be | found4. In8 a -- ny |
        place4. on8 En -- glish | ground,2 Be4 | it4. at8 Wake or | Fair.4. |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
                                %\voiceThree
            d8\rest <f, f>4 | <e, e>2 <bf, bf>4 | <a, a>4. <d d'>8 8 <c c'> | <bf, bf>2 4 |
            <c c'>2 e4 | g g, g | c c' <c, c> | <g, g>2 4 | <a, a> <a,, a,> <d, d> |
            <bf,, bf,>2 <g,, g,>4 | <a,, a,> <f,, f,> a, | bf,2 c4 | f4. | \fine
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
