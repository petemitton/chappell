\version "2.22.0"
\language "english"

global = {
  \time 4/4
  \key g \major
}

mBreak = { \break }
lalign = { \once \override  LyricText.self-alignment-X = #LEFT }

\header {
                                %	title = \markup {\medium \caps "Title."}
                                %	poet = ""
                                %	composer = ""

%  meter = \markup {\italic "Cheerfully."}
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
            \partial 4 g4 | b8_( c') d'4 d' c'8_( b) | <fs a>8_( b) a_( g) g4. fs8 | e4 c fs8( g) a4 | \mBreak
            <a, fs>4 d b\rest e8_( d) | e^( fs) g4 g fs8_( e) | fs8_( g) a4 a d' | b4. g8 e4 <fs d'> | \partial 2. <d b>4 g b\rest \bar "||" | \mBreak
            \partial 4 s4 | d'4 e'8_( d') d' e' d' c' | d'2^( b4) e'8_( d') | c' b a g e4 a | fs_( a) b\rest s4 |
            d'4. 8 b4 g | e a fs s |  s2 a4 d | \partial 2. <c e> <b, g> b4\rest \fine |
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s4 | d2 d | s2 \stemUp b,4 \stemDown s4 | s2 c4 s4 |
            s1 | c2 c | a, d | d s | s2. |
            b8^( c') | g2 g | g2. s4 | e2 s2 | s2. b8^( c') |
            s1 | s2. d'4 | e'8^( d') c'^( b) s4 d | s2. |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        Now4 | all my friends are | dead and gone,4. A8 -- las!4 what will be- |
        -tide4 me,4 4 For | I, poor maid, am | left a -- lone, With -- out4. a8 house4 to | hide me.4 4 |
        \lalign Yet4 | still \lalign I’ll be8 of mer -- ry | \lalign cheer,2. And4 | have8 kind wel -- come ev’4 -- ry -- \lalign where,2 4 Though |
        I4. have8 but4 a | mark a year, And | that my mo -- ther | gave me.4 4 |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            \voiceThree
            d4\rest | g,2 b, | s1 | c2 a, |
            d2 d, | c a, | s1 | s2 s4 d4 | s2. |
            s4 | s1*2 | s2 c'2 | s1 |
            s1*2 | s2 fs4 s4 | s2. | \fine
          } % end voice three

          \new 	Voice {
            \voiceFour
            s4 | s1 | d2 e | s1 |
            s1*2 | d2 fs | g c'4 s4 | g2 d4\rest |
            g8 a | b4 c'8 b b c' b a | b2^( g4) d\rest | c1 | <d a>2 <c d fs> |
            <b, d g>2 <e g> | <c c'> <d a>4 <b, g> | <c g>2 d | g,2 d4\rest |
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
