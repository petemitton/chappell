\version "2.22.0"
\language "english"

global = {
  \time 6/8
  \key d \major
}

mBreak = {}

textRepeat = \markup {
  \override #'(thickness . 3)
  \translate #'(0 . -1)
  \overlay {
    \draw-line #'(1 . 2 )
    \translate #'(0.75 . 0)
    \draw-line #'(1 . 2)
    \translate #'(1.75 . 0.5)
    \draw-circle #0.1 #0.2 ##t
    \translate #'(0 . 1.5)
    \draw-circle #0.1 #0.2 ##t
  }
}

\header {
  %	title = \markup {\medium \caps "Title."}
  %	poet = ""
  %	composer = ""

  % meter = \markup {\italic "Moderate time."}
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
            \repeat volta 2 { \partial 8 <cs g a>8 | %0
            <d fs d'>4 cs'8 d'4 <d fs a>8 | %1
            <d g b>4 a8 b4 <ds fs>8 | %2
            <b, e g>4 fs8 <bf, g>4 d8 | %3
            \partial 8*5 <cs fs>8 e4 d4 } \mBreak %4
            \repeat volta 2 { d8 fs8 d8 fs8. g16 a8 | %5
            e8 g8 e8 g8. a16 b8 | %6
            g8 b8 g8 b8. cs'16 d'8 | \mBreak %7
            e'4 d'8 <e cs'>4. } | %8
            \repeat volta 2 { a8 d'4 cs'4. | %9
            fs8 b4 a4. | %10
            d8 g4 fs8.( e16) d8 | %11
            <b e>4 <a, cs>8 <fs, d>4. | } %12
          }	% end voice one
          \new Voice  \fixed c' {
            \voiceTwo
            s2.*6 | %1-6
            d4. d4. | %7
            g4. s4. | %8
            d4. s4. | %9
            s2.*3 | %10-12
          } % end voice two
        >>
      } % end staff up

      \new Lyrics \lyricmode {
        % verse one
        There8 was4 a8 maid4 this8 o4 -- ther8 day,4 And8 she4 would8 needs4 go8 forth8 to4 play;8 \textRepeat8
        When8 that8 be8 -- heard8. a16 lad8 What8 talk8 this8  maiden4 had,8 There8 -- of8 he8 was8. full16 glad8
        And8 did8 not8 spare4 \textRepeat8 For8 I4 will4. with8 -- out4 fail,4. Maid8 -- en4 give4 you8 Wat4 -- kins8Ale.4 \textRepeat8
      }	% end lyrics verse one
      \new Lyrics \lyricmode {
        % verse two
        And8 as4 she8 walk’d,4 she8 sigh’d4 and8 said,4 I8 am4 a8 -- fraid4 to8 die8 a4 maid.4
        To8 say,8 fair8 maid8. I16 pray,8 Whither4 go8 you8 to8 play?8 Good8 sir,8 then8 did8. she16 say,8
        What8 do8 you8 care?4. Wat8 -- kins4 ale,8. good8. Sir,8 quoth4 she,4. What8 is4 that4 I8 pray,4 tell8 me.4.
      }	% end lyrics verse two
      \new   Staff = "down" {
        <<
          \clef bass
          \global
          \new Voice {
            \voiceThree
            a,8 | %0
            d,4 s2 | %1
            g,4 s2 | %2
            s4. g,4 s8 | %3
            g4 r8 fs4 | %4
            a4. a4. | %5
            b4. b4. | %6
            s2. | %7
            s4. a,4. | %8
            s4. g4 a8 | %9
            b4. e4 fs8 | %10
            g4. <a, cs>4 <b, d>8 | %11
            g,4 a,8 d,4. | %12

          } % end voice three

          \new 	Voice {
            \voiceFour
            s8 | %0
            s4 r8 r4 d8 | %1
            s4 r8 r4 b8 | %2
            e4 r8 s4 r8 | %3
            a,4 r8 d4 | %4
            fs4. d4. | %5
            g4. e4. | %6
            b4. g4. | %7
            e4. s4. | %8
            fs4. e4. | %9
            d4. cs4. | %10
            b,4. s4. | %11
            s2. | %12
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
        \set lyricMelismaAlignment = #CENTER
        \override Staff.Rest.voiced-position=0
      }%end score
    }%end context
  }%end layout

}%end score