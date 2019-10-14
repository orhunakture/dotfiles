function Music {
    param(
        [string]$path = "${ENV:USERPROFILE}\Music"
    )

    mpv --profile=music "$path"
}

function Youtube {
    param(
        [string]$query,
        [int]$count = 5
    )

    mpv "ytdl://ytsearch${count}:${query}"
}
