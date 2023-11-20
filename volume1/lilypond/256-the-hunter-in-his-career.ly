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

%  meter = \markup {\italic "With spirit."}
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
            s4 <g c'>8 bf <f a>4 <d g>8( f) <c e>( d) e <d f> <e g>4 <f a>8 <e bf> | <f c'>4 <d f>8 g <c f a>4 g8.( f16) | <a, f>2. f4 | \mBreak
            s4 <g c'>8( bf) <f a>4 <d g>8 f | <c e>( d) e <c f> <c g>4 <c a>8 <e bf> | <f c'>4 <d f>8 g <f a>4 g8.( f16) | f1 \bar "||" | \mBreak
            <c a>4 g8( f) e4. f8 | g4 f8 e d4 <c e>8 <b,f> | <c g>4 <a, c>8 d <c e>4 d8.( c16) | c1 | \mBreak
            <c a>4 g8 f <e bf>4 a8 g | <f c'>4 <f bf>8( <f c'>) <f d'>4^\fermata <f a>8 <e bf> | <f c'>4 <d f>8 g <c f a>4 g8.( f16) | <a, f>1 \fine |
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            <f f'>4 s2. | s1 | s2. <bf, e>4 | s1 |
            <a g'>4 s2. | s1 | s2. e4 | s1 |
            s4 b,! c2 | c4 a, b,! s | s2. b,!4 | s1 |
            s1*2 | s2. <bf, e>4 | s1 |
          } % end voice two
		>>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        Long4 ere8 the8 morn4 Ex4 -- pects4 the8 re -- turn4 Of8 A -- pollo4 from8 the o4 -- cean4 | queen,2. Be-4 |
        for4 the4 creak4 Of8 the8 | crew4 and8 the8 break4 Of8 the | day4 in8 the wel4 -- kin4 | seen,1 |
        Mounted4 he’d4 halloo,4. And8 | cheer4 -- ful8 -- ly8 follow4 To8 the8 | chace4 with8 his bu4 -- gle4 | clear.1 |
        Echo4 doth8 he make,4 And8 the | moun4 -- tains shake, With8 the | thun4 -- der8 of his4 ca4 -- reer.1 |

      }	% end lyrics verse one
      \new Lyrics \lyricmode {	% verse tow
        1*4 |
        2 (croak)4 4 | 1*3 |
      }	% end lyrics verse two
      \new   Staff = "down" {
		<<
          \clef bass
          \global
          \new Voice {
            \voiceThree
            s2. bf,4 | c2. f,8 g, | a,4 bf, c c | s c f, s |
            s2. bf,4 | c4. s8 s2 | s1 | s4 c4 f,2 |
            s2 c4 a, | e, f, g, c,8 d, | e,4 f, g f | e1 |
            f,2 g, | a,4 g,8 a, bf,4 f,8 g, | a,4 bf, c c | s c f,2 | \fine
          } % end voice three
          \new Voice { % voice four
            \voiceFour
            a4 e f s | s1*2 | f4 s2 f8 e |
            d4 e f s | s4. d8 e4 f8 g | a4 bf c' <c bf> | <f a> s2. |
            f4 d s2 | s1 | s2 g,4 g, | c, c8 bf,! a,4 g,8. f,16 |
            s1*3 | f4 s2. |
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
