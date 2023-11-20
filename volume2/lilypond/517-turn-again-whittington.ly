\version "2.24"
\language "english"

global = {
  \time 6/8
  \key g \major
}

mBreak = { }

\score { 

  \new ChoirStaff {
    <<
      \new Staff = "up"  {
        <<
          \global
          \new 	Voice = "one" 	\fixed c' {
            \voiceOne
            g8 d' c' b d' a | g d' c' b4 a8 | g d' c' b d' a | g d' c' b4 a8 | \bar "||" | \mBreak
            e'8 d' c' b d' a | g d' c' b4 a8 | \stemDown e' d' c' b d' a | \stemUp g d <e c'> <g b>4 <fs a>8 | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            %\voiceTwo
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        Here8 must I tell the praise | Of wor -- thy Whitting4 -- ton,8 | Known8 to be in his days | Thrice Mayor of Lon4 -- don.8 |
        But8 of poor par -- ent -- age | Born was he, as we hear, | And, in his ten -- der age, | Bred up in Lanca4 -- shire.8 | \fine
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            \voiceThree
            b4 a8 d'4 c'8 | f'!4 e'8 d'4 c'8 | b4 a8 d'4 c'8 | s4. g4 fs8 | 
            c'8 b a d'4 c'8 | f'!4 e'8 d'4 c'8 | c' b a d'4 c'8 | b4 s2 | 
          } % end voice three

          \new 	Voice {
            %\voiceFour
            g2.~ | g | g | <g b>4 <c a>8 d4. | 
            g2. | g | g | g4 c8 d4. | \fine
          }	% end voice four

        >>
      } % end staff down
    >>
  } % end choir staff

  \layout{
    \context{
      \Score {
        \omit  BarNumber
      }%end score
    }%end context
  }%end layout

  \midi{}

}%end score