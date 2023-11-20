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
            \partial 8 bf,8 | ef4 <bf f>8 <ef g>4 <f af>8 | <g bf>4 ef'8 bf4 <f af>8 | <ef g>( bf) g ef( d) ef | \mBreak
            f8( af) <ef g> <d f>4 bf,8 | ef4 <bf, f>8 <ef g>4 <f af>8 | <g bf>4 ef'8 bf4 <g ef'>8 | %
            \stemDown <f bf d'>( c')  bf \stemNeutral f( bf) <ef a!> | \partial 8*5 <d bf>4.~4 \bar "||" | \mBreak
            \stemUp \partial 8 bf8 | ef'4 8 bf4 8 | af( g) af g4 bf8 | ef'4 8 bf4 8 | af( g) af g( af) bf | \mBreak
            c'4 d'8 ef'( d') c' | bf4 af8 g^( af) bf | c' bf af g4 f8 | \mBreak
            ef8( g) ef c4 d8\f | ef4\fp 8 8( g) bf | c4.( bf4) <g ef'>8 | <af c'> <g bf> <f af> <b,! g>4 f8 | \mBreak
            ef8( g) ef c4 d8\f | ef4\sf <ef ef'>8 g( af) <d f> | \partial 8*5 ef4.~4 | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s8 | s2.*3 | \once \stemUp d4 s2 |
            s2.*3 | s8*5 |
            s8 | ef2. | d4. ef4 s8 | ef2. | d4. ef |
            ef2. | f4. g | ef4. d |
            ef4 s2 | s2.*3 |
            \stemUp c4  s2 | s4. ef4 s8 | s8*5 |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricsto "one" {	% verse one
        ’Twas | on the morn of | sweet May -- day, When | Na -- ture paint -- ed |
        all thing gay; Taught | birds to sing and | lambs to play, And | deck’d the mead -- ows | fair: |
        Young Joc -- key, ear -- ly | in the morn, A -- rose and tripp’d it | o’er the lawn; His |
        Sun -- day coat the | youth put on, For | Jen -- ny had vow’d "a -" |
        "- way" to run With | Joc -- key, to the | "Fair,   .   ." For | Jen -- ny had vow’d "a -" |
        "- way" to run With | Joc -- key, to the | "Fair,   .   ." |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            \voiceThree
            bf,8 | g4 s2 | s2.*2 |
            s4. s4 bf,8 | g4 s2 | s2.*2 | bf,4 s8 s4 |
            d8\rest | bf2. | 4.~4 d8\rest | bf2.~ | 4.~4 s8 |
            s2.*2 | af,4. bf, |
            c4.~4 <f bf>8 | <g bf>4 s2 | c'4.( bf4) s8 | f,4. g, |
            c4.~4 <bf, f bf>8 | <g bf>4 s8 bf4 af8 | <ef g>4.~4 |
          } % end voice three

          \new 	Voice {
            \voiceFour
            s8 | <ef, ef>2.~ | 2.~ | 4. <g, ef> |
            <bf, bf>4.~4 s8 | <ef, ef>2.~ | 4. 4 c8 | f2. | s4 f8 bf4 |
            s8 | g2. | f4. ef4 s8 | g2. | f4. ef8 f g |
            af4 bf8 c' bf af | d4. ef | s2. |
            s4. s4 <bf,, bf,>8 | <ef, ef>4 ef8 8 g bf | s4. s4 c,8 | s2. |
            s4. s4 bf,,8 | <ef, ef>4 <c g>8 <bf, bf>4. | s8*5 |
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