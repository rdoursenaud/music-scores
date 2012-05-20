\version "2.14.2"

\header 
{
  title="Where is my mind"
  composer="Pixies"
}

upHalfTheme = \drummode
{
  hh8 hh << sn hh >> hh 
}

upHalfThemeA = \drummode
{
  hh8 hh << sn hh >> hhho 
}

upHalfThemeB = \drummode
{
  hh8 hh << sn hh >> rb 
}

upHalfThemeC = \drummode
{
  hh8 hh << sn hh >> cyms 
}

upHalfThemeD = \drummode
{
  cymc8 hh << sn hh >> hh 
}

upTheme = 
{
  \upHalfTheme \upHalfTheme
}

upThemeA = 
{
  \upHalfTheme \upHalfThemeA
}

upThemeB = 
{
  \upHalfTheme \upHalfThemeB
}

upThemeC = 
{
  \upHalfTheme \upHalfThemeC 
}

% Starts with a crash
upThemeD = 
{
  \upHalfThemeD \upHalfTheme 
}

upFlaHalfTheme = \drummode 
{
  hh8 hh \acciaccatura sn8 sn4 
}

upSectionC = \drummode
{
  % Measure 21
  \upHalfTheme
  \upFlaHalfTheme

  % Measure 22
  \upFlaHalfTheme
  hh8 hh \acciaccatura sn8 sn8 toml8

  % Measure 23 (beginning)
  cymc4
}

upSectionD = \drummode
{
  % Measure 24
  cymc8 hh hh hh hh16[ sn hh8] sn16 sn sn8
}

upBreakC = \drummode
{
  % Measure 37
  \upHalfTheme
  \upFlaHalfTheme

  % Measure 38
  \upFlaHalfTheme
  \upFlaHalfTheme

  % Measure 39 (beginning)
  cymc4
}

upSectionG = \drummode
{
  % Measure 40
  cymc8 hh hh hh hh hh hh hh

  % Measures 41-42
  \repeat unfold 2 { hh8 hh hh hh hh hh hh hh }

  % Measure 43
  tommh16^"R"[ tommh8^"L" tomml16^"L" tomml8^"R" tomfh16^"R" tomfh16^"L"] r16
  sn16^"L"[  \acciaccatura { sn[ sn] } sn^"L" tomml16^"R"] \stemDown { tomfh16[ tomfh \acciaccatura sn8 sn] } \stemUp
}

downHalfTheme = \drummode 
{
  bd8 bd s4 
}

downTheme =
{
  \downHalfTheme 
  \downHalfTheme
}

downSectionC = \drummode 
{
  % Measure 21
  \downTheme

  % Measure 22
  \downHalfTheme
  bd8. bd16 s4

  % Measure 23 (beginning)
  bd4
}

downSectionD = \drummode
{
  % Measure 24
  bd8[ bd sn8. bd16] r8 bd8 r4
}

downBreakC = \drummode
{
  % Measure 37
  \downTheme

  % Measure 38
  \downHalfTheme
  bd4 s4

  % Measure 39 (beginning)
  bd4
}

downSectionG = \drummode
{
  % Measures 40-41
  \repeat unfold 2 { bd8[ bd sn8. bd16] r16 sn16[ bd bd sn8. sn16] }

  % Measure 42
  bd8[ bd sn8. bd16] r16 sn16[ bd bd] sn4

  % Measure 43
  s1
}

downSectionH = \drummode
{
  % Measures 40-41
  \repeat unfold 2 { bd8[ bd sn8. bd16] r16 sn16[ bd bd sn8. sn16] }

  % Measure 42
  bd8[ bd sn8. bd16] r16 sn16[ bd bd] sn4

  % Measure 43
  s1
}

allSectionB = \drummode
{
  \repeat volta 8
  {
    <<
      \new DrumVoice { \voiceOne \upTheme }
      \new DrumVoice { \voiceTwo \downTheme }
    >>
  }
  \alternative
  {
    {
      <<
	\new DrumVoice { \voiceOne \upThemeA }
	\new DrumVoice { \voiceTwo \downTheme }
      >>
    }
    {
      <<
	\new DrumVoice { \voiceOne \upThemeB }
	\new DrumVoice { \voiceTwo \downTheme }
      >>
    }
    {
      <<
	\new DrumVoice { \voiceOne \upThemeA }
	\new DrumVoice { \voiceTwo \downTheme }
      >>
    }
    {
      <<
	\new DrumVoice { \voiceOne \upThemeC }
	\new DrumVoice { \voiceTwo \downTheme }
      >>
    }
  }
}

allSectionC = \drummode
{
  <<
    \new DrumVoice { \voiceOne \upSectionC }
    \new DrumVoice { \voiceTwo \downSectionC }
  >>
  r4 r2
}

allSectionD = \drummode
{
  <<
    \new DrumVoice { \voiceOne \upSectionD }
    \new DrumVoice { \voiceTwo \downSectionD }
  >>
}

allSectionE = \drummode
{
  <<
    \new DrumVoice { \voiceOne \upThemeD \upThemeA }
    \new DrumVoice { \voiceTwo \downTheme \downTheme }
  >>

  \repeat volta 5
  {
    <<
      \new DrumVoice { \voiceOne \upTheme }
      \new DrumVoice { \voiceTwo \downTheme }
    >>
  }
  \alternative
  {
    {
      <<
	\new DrumVoice { \voiceOne \upThemeA }
	\new DrumVoice { \voiceTwo \downTheme }
      >>
    }
    {
      <<
	\new DrumVoice { \voiceOne \upThemeB }
	\new DrumVoice { \voiceTwo \downTheme }
      >>
    }
    {
      <<
	\new DrumVoice { \voiceOne \upThemeA }
	\new DrumVoice { \voiceTwo \downTheme }
      >>
    }
    {
      <<
	\new DrumVoice { \voiceOne \upThemeC }
	\new DrumVoice { \voiceTwo \downTheme }
      >>
    }
  }
}

allSectionF = \drummode
{
  <<
    \new DrumVoice { \voiceOne \upBreakC }
    \new DrumVoice { \voiceTwo \downBreakC }
  >>

  % Measure 39 (end)
  r4 r2
}

allSectionG = \drummode
{
  <<
    \new DrumVoice { \voiceOne \upSectionG }
    \new DrumVoice { \voiceTwo \downSectionG }
  >>
}

allSectionH = \drummode
{
  <<
    \new DrumVoice { \voiceOne \upThemeD \upThemeA }
    \new DrumVoice { \voiceTwo \downTheme \downTheme }
  >>

  \repeat volta 5
  {
    <<
      \new DrumVoice { \voiceOne \upTheme }
      \new DrumVoice { \voiceTwo \downTheme }
    >>
  }
  \alternative
  {
    {
      <<
	\new DrumVoice { \voiceOne \upThemeA }
	\new DrumVoice { \voiceTwo \downTheme }
      >>
    }
    {
      <<
	\new DrumVoice { \voiceOne \upTheme }
	\new DrumVoice { \voiceTwo \downTheme }
      >>
    }
    {
      <<
	\new DrumVoice { \voiceOne \upThemeA }
	\new DrumVoice { \voiceTwo \downTheme }
      >>
    }
    {
      <<
	\new DrumVoice { \voiceOne \upThemeC }
	\new DrumVoice { \voiceTwo \downTheme }
      >>
    }
  }
}

song = 
\new DrumStaff 
{
  \tempo 4=80

  % Measures 1-3
  R1*3

  % Measure 4
  r2
  \new DrumVoice { \voiceOne \drummode { sn16\< sn sn sn sn4\! } }

  % Measures 5-20
  \allSectionB

  % Measures 21-23
  \allSectionC

  % Measure 24
  \allSectionD

  % Measures 25-36
  \allSectionE

  % Measures 37-39
  \allSectionF

  % Measures 40-43
  \allSectionG

  % Measures 44-55
  \allSectionH
}

% Layout
\score
{
  \song
  \layout { }
}

% MIDI
% Unfolded repeats are required for MIDI when using multiple voices
\score
{
  \unfoldRepeats
  {
    \song
  }
  \midi { }
}

