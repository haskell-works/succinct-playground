# Oarsome [![Circle CI](https://circleci.com/gh/haskell-works/succinct-playground/tree/master.svg?style=svg)](https://circleci.com/gh/haskell-works/succinct-playground/tree/master)

    stack ghci --ghc-options -XOverloadedStrings --main-is succinct-playground:exe:succinct-playground-exe

To build docker:

    docker-machine start dev
    eval $(docker-machine env dev)
    stack docker pull
    stack build
