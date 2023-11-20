\version "2.24"
\language "english"

global = {
  \time 4/4
  \key ef \major
}

mBreak = { }

\score {

  \new ChoirStaff {
    <<
      \new Staff = "up"  {
        <<
          \global
          \new 	Voice = "one" 	\fixed c' {
            %\voiceOne
            <ef g c'>4 <f b!> <g c'> g8 <f b> | <ef g c'>4 <d g b!> <ef g c'> bf8 af | g4 f8( ef) f4 g | c2. g4 | \mBreak
            <ef g c'>4 <f b!> <g c'> g8 <f b> | <ef g c'>4 <d g b!> <c ef c'> bf8 af | <c g>4 f8 ef <c f>4 <b,! d g> | \partial 2. c2. \bar "||" | \mBreak
            \partial 4 d4 | ef8 f g f ef f g f | ef f g af bf4 g | f8 g af g f g af g | \mBreak
            f8 g af bf c'4 <g d'> | <g ef'> d'8( ef') <f b! f'>4 <g c' ef'> | <g b! d'>8( ef') d'( c') b4 af8^\pp 8 | g4 f8 ef f4 g | \partial 2. c2. | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            %\voiceTwo
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        Old King Cole was a | merry old soul, And a | merry old soul was | he; And_he |
        call’d for_his pipe And he | call’d for_his bowl, And he | call’d for his fid -- lers | three. |
        Then | twedle, _ twedle, _ twedle, _ twedle, _ | twedle _ wnt the fid -- lers; | Twedle, _ twedle, _ twedle, _ twedle, _ | 
        twedle, _ twedle, _ twee, There’s | none so rare as | can com -- pare To king | Cole and his fidd -- lers | three. |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            c4 d ef4. d8 | c4 g c' bf8 af | g4 f8 ef f4 g | c g, c, r |
            c4 d ef4. d8 | c4 g, af, g,8 f, | ef,4 d,8 c, af,4 g, | c2 c,4 |
            <bf, f bf>4 | <ef g bf>2 2 | 2. <e! g c'>4 | <f af c'>2 2 |
            <f af c'>2. b,!4 | c4 b,!8( c) d4 c | g2. af4 | g f8 ef f4 g | c2. |
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