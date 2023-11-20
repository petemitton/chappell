\version "2.22.0"
\language "english"

global = {
  \time 3/4
  \key g \major
}

mBreak = { \break }
lalign = { \once \override  LyricText.self-alignment-X = #LEFT }

\header {
                                %	title = \markup {\medium \caps "Title."}
                                %	poet = ""
                                %	composer = ""

%  meter = \markup {\italic "Moderate time."}
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
            \repeat volta 2 { \partial 4 g4 | g b g | a c' e8_( fs) | g4 fs e | <b, d>2 <c c'>4 | b4. a8 b_( c') | \mBreak
            d'4 b g | <e a> fs d | \partial 2 <b, g>2 } | \partial 4 g4 | b2 g4 | c'2 e8_( fs) | g4 fs e | \mBreak
            <b, d>2 <c c'>4 | b4. a8 b_( c') | d'4 b g | <e a>4 fs d | \partial 2 <b, g>2 \fine |
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s4 | d2. | e2 s4 | d4 c2 | s2. | d2 d4 |
            d2 b,4 | c2. | s2 | s4 | d2. | e2 s4 | d4 c2 |
            s2. | d2 d4 | d2 b,4 | c2. | s2 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        Tom4 | Tin -- ker’s my | true love, \lalign And | I am his | dear,2 And4 | I4. will8  \lalign go4 |
        with4 him, his | bud -- get to | bear,2 | This4 | way,2 that4 way,2 \lalign which4 -- e -- ver you |
        will,2 I’m4 | sure4. I8 \lalign say4 | no -- thing that | you can take | ill.2 |

      }	% end lyrics verse one
      \new Lyrics \lyricmode { % verse two
        For8 of8 | all4 the young | men2 he4 | has the best | way;2 All4 | the8 day4 he8 will4 |
        fid4 -- dle, at | night he will | play.2 |
      }

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
                                %\voiceThree
            d4\rest | <g b>2. | <c c'>2 <d a>4 | <b, g>4 <c g>2 | <g, g>2 <e g>4 | <d g>2 <c fs>4 |
            <b, g>2 e4 | c4 d2 | g,2 | r4 | <g b>2. | <c c'>2 <d a>4 | <b, g>4 <c g>2 |
            <g, g>2 <e g>4 | <d g>2 <c fs>4 | <b, g>2 e4 | c4 d2 | g,2 | \fine
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
