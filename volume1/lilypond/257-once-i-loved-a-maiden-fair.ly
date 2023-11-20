\version "2.22.0"
\language "english"

global = {
  \time 4/4
  \key f \major
}

sdown = { \override Stem.direction = #down }
sup = { \override Stem.direction = #up }
mBreak = { \break }

\header {
                                %	title = \markup {\medium \caps "Title."}
                                %	poet = ""
                                %	composer = ""

%  meter = \markup {\italic "Smoothly and in moderate time."}
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
            a4. a8 a4 a | <bf, e g> <c a> <a, f>2 | g4 g <c e g> <c e a> | <bf, e g>2 <a, f> | a4. a8 a4 a4 |
            <d g>4 <cs e a> <d f>2 | g4 g <c! e g> <c e a> | <bf, e g>2 <a, f>2 \bar ".." | <c f a>4^\< <c e bf> <c f c'>2 | <f d'>4\> <e g d'> <f a c'>2\! | a4. bf8 c'4 <f a> | \mBreak
            g2 <a, f> | a4.\sf a8 a4 a | <d g> <cs e a> <d f>2 | g4 g <bf, e g> <bf, e a> | <bf, e g>2 <a, f> \fine |

          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            <c f>1 | s1 | <d f>2 s2 | s1 | <d f>1 |
            s1 |  <d f>2 s2 | s1*3 | f2. s4 |
            <d f>4 <c e>8 bf, s2 | e2. f4 | s1 | <b,! f>2 s2 | s1 |

          } % end voice two
		>>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        Once4. I8 lov’d4 a | maid -- en fair,2 | But4 she did de -- ceive2 me; She4. with8 Ve4 -- nus |
        might4 com4 -- pare2 | In4 my mind, be -- lieve2 me. | She4 was young,2 | And4 a -- mong2 Creat4. -- ures8 of4 temp-4 |
        -ta2 -- tion, | Who4. will8 say4 But | maid4 -- ens may2 | Kiss4 for re -- cre -- a2 -- tion. |

      }	% end lyrics verse one
      \new   Staff = "down" {
		<<
          \clef bass
          \global
          \new Voice {
            f1 | c2 d | bf, c4 c | f1 | d1 |
            bf,4 a,4 d,2 | bf, c4 c | f1 | f4 g a2 | bf4 bf a2 | f,4. g,8 a,4 d |
            bf,4 c4 f,2 | cs'2. d'4 | bf a d2 | g,2 c, | f,4 c f2 | \fine

          } % end voice three
          \new Voice { % voice four

          } % end voice four
		>>
      } % end staff down
	>>
  } % end choir staff

  \layout{
    \context{
      \Score {
        \omit  BarNumber
                                %\override LyricText.self-alignment-X = #LEFT
        \override Staff.Rest.voiced-position=0
      }%end score
    }%end context
  }%end layout

}%end score
