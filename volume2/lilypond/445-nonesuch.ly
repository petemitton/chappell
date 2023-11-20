\version "2.22.2"
\language "english"

global = {
  \time 2/4
  \key g \major
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
            %\voiceOne
            \repeat volta 2 { \partial 8 d'8 | <g d'>[ b <fs c'> d'] | b8.[ a16 g8] d' | <g d'>[ b <fs c'> d'] | \mBreak
            \partial 4. <g b>4. } | \partial 8 b8 | <fs a>[ d g a] | b8.[ a16 g8] b | <fs a>8[ d <d g> <d a>] | \mBreak 
            <d b>4. b8 | <fs a>[ d g a] | b8.[ a16 g8] d' | <g d'>[ b <fs c'> d'] | \partial 4. <g b>4. | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo 
            s8 | s2 | \stemUp g4 s | s2 |
            s4. | s8 | s2 | d4 s | s2 |
            s2*2 | d4 s | s2 | s4. |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        Me8 | have of late been | in8. Eng16 -- land,8 Vere | me have seen much | 
        sport,4. | De8 | King and Queen dey | se8. -- pa16 -- rate,8 And | rule in i -- gno- |
        -rance,4. Pray8 | judge, ye gen -- tle -- men,8. if16 dis8 Be | \markup { \italic "à" }  \markup { \italic "la" }  \markup { \italic "mode" }  \markup { \italic "de" }  \markup { \italic "France." }  
      }	% end lyrics verse one
      \new Lyrics \lyricmode { % verse two
        De8 rais -- ing of de | Par8. -- lia16 -- ment8 Have | quite pull’d down de |
        Court,4.
      }

      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            %\voiceThree
            r8 | <g b d'> r <g a d'> r | <g b d'> r r4 | <g b d'>8 r <g a d'> r |
            <g b d'>4 g,8 | r | d r e fs | g4 r | d8 r e fs | 
            g4 g,8 r | d8 r e fs | g4 r | <d b>8 r <d a> r | <g, g>4. | \fine
          } % end voice three

          \new 	Voice {
            \voiceFour
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