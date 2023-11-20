\version "2.22.2"
\language "english"

global = {
  \time 4/4
  \key ef \major
}

mBreak = { \break }
lalign = { \once \override  LyricText.self-alignment-X = #LEFT }
dynamicsX =
#(define-music-function (offset)(number?)
   #{
     \once \override DynamicText.X-offset = $offset
     \once \override DynamicLineSpanner.Y-offset = #0
   #})
hyphen = { \once \override LyricHyphen.minimum-distance = #1.0 }

\header {
  %	title = \markup {\medium \caps "Title."}
  %	poet = ""
  %	composer = ""

  meter = \markup {\italic ""}
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
            \partial 8 ef8 | 4 g g af8_( bf) | c'4 bf c'4. 8 | bf4 g <ef g> <d f>8_( ef) | \mBreak
            <d f>2 ef4. 8 | 4 g g af8_( bf) | c'4 <g bf> <af c'>4. c'8 | bf4 g <ef g> <d f>8_( ef) | \mBreak
            <d f>2 ef4. 8 | ef'4 ef' d' g | c'4 c' bf g | s1 | \mBreak
            <ef a! c'>2 <d bf> | ef'4 ef' d' c'8_( bf) | c'4 c' bf g | af8_( bf) c'4 bf af8_( g) | \partial 8*7 <d f>2 ef4. | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s8 | s2 ef2~ | 2 2~ | 2 s |
            s1 | s2 ef2~ | 4 s2. | 2 s |
            s1 | ef1 | 1 | <ef g ef'>4 <ef a! ef'> <f bf d'>8^( ef') <ef bf g>4 |
            s1 | ef | ef | ef | s2 s4. |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        I8 | am4 a lus -- ty | live -- ly lad,4. Now8 | come4 to one8 - and-4 |
        -twen2 -- ty,4. My8 | fa4 -- ther left me | all he had,4. Both8 | gold4 and sil -- ver |
        plen2 -- ty;4. Now8 | he’s4 in grave, I | will4 be brave, The | la -- dies shall a- |
        -dore4 me, I’ll2 | court4 and kiss, What | hurt’s in this? My | dad did so be -- fore2 me.4. |
      }	% end lyrics verse one

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            \voiceFour
            r8 | ef2. f8 g | af4 g af2 | g4 ef bf af8 g |
            <bf, af>2 <ef g> | c1 | s4 ef af2 | g4 ef bf af8 g |
            <bf, af>2 <ef g> | c'2 bf4 af8 g | af2 g4 ef | s1 |
            f4 s2. | c'2 bf4 af8^( g) | af2 g4 ef | f8 g af4 g f8 ef | <bf, af>2 <ef g>4. | \fine
          } % end voice three

          \new 	Voice {
            \voiceThree
            s8 | g2. s4 | s1*2 |
            s1 | g2 s2 | af,4 s2. | s1 | 
            s1*3 | c4 c bf, d | 
            s4 f, bf,2 | s1*3 | s2 s4. |
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