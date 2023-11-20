\version "2.24"
\language "english"

global = {
  \time 6/8
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
            <bf, ef>8 f g <bf, af> g f | <bf, g> f ef bf4 g8 | <c af> bf c' <ef bf> af g | <ef g>4. <d f> | \mBreak
            ef8 f g af g f | g f ef ef'4 d'8 | c' d' bf a! bf c' | <ef a! c'>4. <d bf> \bar "||" | \mBreak
            <d bf>8 <ef c'> <f d'> <g ef'>4 <bf d'>8 | <af c'> <g bf> <f af> <b,! g>4 d'8 | <g c' ef'> d' c' <f b!> c' d' | <f b! d'>4. <ef c'> | \mBreak
            <ef bf!>8 c' d' <ef ef'> bf c' | <ef bf> af g <d f>4 ef8 | ef g af <ef bf> g c' | <d f>4. ef | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            %\voiceTwo
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        Lad -- ies of Lon -- don, both | weal -- thy and fair, Whom | ev’ -- ry town fop is pur -- su -- ing, |
        Pray of your -- selves and your | pur -- ses take care, The | great -- est dec -- eit lies in | woo -- ing. |
        From the first rank of_the | \markup {\italic "beaux" } _ \markup {\italic "esprits," } _ Their | vic -- es I here will dis -- cov -- er, |
        Down to the bas -- est me -- chan -- ic de -- gree, That | so you may choose out a | lov -- er. |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            <ef g>4. <d f> | ef2. | <af, ef>4. <ef g> | <bf, bf>2. |
            <ef g>4. <d f bf> | <ef bf> <c g c'> | <f a! c'> <f c' ef'> | bf2. | 
            bf,4. ef, | f, g,4 b,!8 | c4  ef8 g4 g,8 | c2. |
            <ef g>4. <g, ef>4 af,8 | \stemUp g8 f ef bf4 s8 | g ef f g ef af | s2. |
          } % end voice three

          \new 	Voice {
            \voiceFour
            s2.*13 | bf,4.~4 <c g>8 | c4. bf,4 af,8 | <bf, af>4. <ef g> | \fine
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