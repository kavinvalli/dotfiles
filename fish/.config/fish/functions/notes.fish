
function __notes_pushd_notes
  if test (pwd) != $HOME"/notes"
    pushd ~/notes
  end
end

function __notes_concatenate
  set result ""
  for x in $argv[1..(count $argv)]
    set result $result" "$x
  end
  echo $result
  set -e result
end

function __notes_create_note
  set title (__notes_concatenate $argv[1..(count $argv)])
  set note_file (date +%Y-%m-%d)""$title".md"
  nvim $note_file
  set -e note_file
  set -e title
end

function notes
  __notes_pushd_notes
  if test (count $argv) -lt 1
  else if test $argv[1] = "-t"
    __notes_create_note
  else if test $argv[1] = "-s"
    set raw ""
    if test (count $argv) -gt 1
      set query (__notes_concatenate $argv[2..(count $argv)] | xargs)
      set raw (fzf --tac --print-query -1 -q $query --preview 'cat {}')
      set -e query
    else
      set raw (fzf --tac --print-query --preview 'cat {}')
    end

    if test (count $raw) -gt 1
      nvim $raw[2]
    else
      __notes_create_note $raw[1]
    end
    set -e raw
  else 
    __notes_create_note $argv[1..(count $argv)]
  end
end

