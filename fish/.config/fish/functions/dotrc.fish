function __dotrc_pushd_dotfiles
    if test (pwd) != $HOME"/.dotfiles"
        pushd ~/.dotfiles
    end
end

function __dotrc_concatenate
    set result ""
    for x in $argv
        set result $result" "$x
    end
    echo $result
    set -e result
end

function dotrc
    __dotrc_pushd_dotfiles
    set raw ""
    if test (count $argv) -gt 0
        set query (__dotrc_concatenate $argv[1] | xargs)
        echo $query
        set raw (find . -not -path "./.git/*" | fzf --tac --print-query -1 -q $query --preview 'cat {}')
        set -e query
    else
        set raw (find . -not -path "./.git/*" | fzf --tac --print-query --preview 'cat {}')
    end
    nvim $raw[2]
    popd
end
