\version "2.24"
\language "english"

global = {
  \time 4/4
  \key ef \major
}

mBreak = { \break }

\score {

  \new ChoirStaff {
    <<
      \new Staff = "up"  {
        <<
          \global
          \new 	Voice = "one" 	\fixed c' {
            %\voiceOne
            \partial 4 <ef g>4 | f4. ef8  f4 <d g>4 | ef4. d8 c4. d8 | bf,4 ef ef <d f> | <ef g>8 <f af> <g bf>4 4 bf | \mBreak
            ef'4. d'8 <ef c'>^( d') ef'4 | <ef g>4 f8_( ef) <c f>4 ef8_( f) | <c ef g>4 c' g4. f8 | \partial 2. ef4. d8 c4 | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            \stemUp s4 | c4 s2. | c4 s2. | s1*2 |
            \once \stemDown ef4 s2. | s1 | s2 <b,! d>4 s4 | c4 s2 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        There4 | was4. a8 lass4 of | Cum4. -- ber8 -- land,4. A8 | bon4 -- ny lass of | high4 deg -- ree, There |
        was4. a8 lass,4 her | name was Nell, The | blith -- est lass4. that8 | e’er4. you8 see.4 |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree 
            c4 | af2. b,!4 | c2 <af, ef> | <ef g>2. bf,4 | ef, ef ef r |
            g2 af | ef af | g g | c2. | \fine
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
      }%end score
    }%end context
  }%end layout

  \midi{}

}%end score