\version "2.22.0"
\language "english"

global = {
  \time 6/8
  \key bf \major
}

mBreak = { \break }
lalign = { \once \override  LyricText.self-alignment-X = #LEFT }
dynamicsX =
#(define-music-function (offset)(number?)
  #{
  \once \override DynamicText.X-offset = $offset
  \once \override DynamicLineSpanner.Y-offset = #0
  #})

\header {
                                %	title = \markup {\medium \caps "Title."}
                                %	poet = ""
                                %	composer = ""

%  meter = \markup {\italic "Boldly."}
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
            \partial 8 \dynamicsX #-4 bf,8\f | 4 8 4 8 | f4.~ 4 8 | <bf, g>4 g8  <ef a>4 f8 | <d bf>4.~ 4 bf8 | \mBreak
            <bf, bf>4 bf8 <d f>4 g8 | a4.~ 4 8 | <bf, bf>4 bf8 <f a c'>4 c'8 | <f bf d'>4.~ 4 s8 | \mBreak
            s4. bf4 s8 | s4. f4 s8 | s4. <ef a c'>4 s8 | \partial 8*5 <d bf>4.~ 4 \fine |
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s8 | s2. | \stemUp bf,4 s2 | s2.*2 |
            s2. | c4 s2 \stemDown | s2. | s8*5 f'8^\p |
            <f d'>8 c' d' s4 d'8 | <a c'> bf c' s4 f'8 | <f d'> c' bf s4 c'8 | s8*5 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        The8 | wise4 men8 were4 but8 | \lalign seven,8*5 Nor8 | more4 shall8 be4 for8 | \lalign me;8*5 The8 |
        mu4 -- ses8 were4 but8 | \lalign nine,8*5 The8 | wor4 -- thies8 three4 times8 | \lalign three;8*5 And8 |
        three8 mer -- ry boys,4 And8 | three8 mer -- ry boys,4 And8 | three mer -- ry boys4 are8 | \lalign we.8*5 |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
                                %\voiceThree
            r8 | <bf,, bf,>4 r8 r4. | <d, d>4 r8 r4. | <ef, ef>4 r8 <c, c>4 r8 | <bf,, bf,>4.~ 4 r8 |
            <d, d>4 r8 <bf,, bf,>4 r8 | <f, f,,>4 r8 r4. | <g, g>4 r8 <f, f>4 r8 | <bf,, bf,>4.~ 4 r8 |
            bf,4. d | f a | bf4 d8 f4 f,8 | bf,4.~ 4 | \fine 
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
