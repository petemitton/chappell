\version "2.22.2"
\language "english"

global = {
  \time 6/8
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
            \oneVoice
            \repeat volta 2 { \partial 8 e'8 | <f ds'> cs b <ds b> c' ds' | <b e'>4. <e g> | <ds a>8 c' <e b> <e g>4 <ds fs>8 | \mBreak
            \voiceOne \partial 8*5 e4.~4 } | \partial 8 <c fs>8 | <b, g_(> fs) g <d a> b c' | b4._( d'4) <c fs>8 | <b, g_(> fs) g <d a_(> b) c' | \mBreak
            <d b>4.~4 <ds fs>8 | <e g_(> fs) g <ds a> b c' | <e b>4. <e e'> | <fs b>8 a <e g> <c fs>4 e8 | \mBreak
            ds4.~8 \noBeam e fs | <b, g>4. <c_( fs>4 fs8) | ds8 b,4~4 <b, fs>8 | <b, g> fs g <fs a> b c' | \mBreak
            <g b>4.~4 <c fs>8 | <b, g> fs g <ds a> b c' | <e b>4. <g e'> | <g b>8 <fs a> <e g> <e g>4 <ds fs>8 | \partial 8*5 e4.~4 | \fine
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceOne
            s2.*4 | s8 | s2. | d4 s2 | s2. |
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {	% verse one
        I8 | am a poor shep -- herd un -- done,4. And | can8 -- not be cur’d4 by8 |
        8 art;4. 8
      }	% end lyrics verse one
      \new Lyrics \lyricmode { % verse two
        For16 a | maid8 -- en as bright as the | sun4. Has | sto8 -- len a -- way4 my8 |
        8 heart.4. 8 | And8 | how4 to8 get it a -- gain4. 4 There’s8 | none4 but8 she4 can8 | 
        8 tell,4. 8 Or8 | cure4 me8 of4 my8 | pain,4. By | say8 -- ing she loves4 me8 |
        16 well.4. 16 And8 a -- las!4. poor | shep8 -- 8 herd,4 8 A8 -- lack4 and8 well4 -- "a -"8 | 
        8 "- day."4. 8 Be8 -- fore4 I8 was4 in8 | love,4. O | ev8 -- e -- ry month4 was8 | 8 May.4. 8 | 
      } % end lyrics verse two
      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            \oneVoice
            r8 | b4. a | g c' | fs4 g8 b4 <b, a>8 |
            <e g>4. e4 | d8 | g4. fs | g4.~4 d8 | g4. fs |
            g8 d b, g,4 b,8 | e4. fs | g c' | ds4 e8 a,4 c8 | 
            b,4 fs8 b4 r8 | e4. a, | b, b,4 ds8 | e4. d! |
            g8 d b, g,4 ds8 | e4. fs | g e | b b4 a8 | <e g>4.~4 | \fine
          } % end voice three

          \new 	Voice {
            \voiceFour
            s2.*4 | s8 |
            s2.*14 | s4. b,4. |
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