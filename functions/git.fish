function git -a subcommand --description 'git wrapper with some extras'
    switch $subcommand
        case ''
            git status -sb
        case 'clone'
            g.clone $argv[2..-1]
        case '*'
            command git $argv
    end
end
