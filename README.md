# spotDL Docker

This project is a Docker container for the repository [spotDL spotify-downloader](https://github.com/spotDL/spotify-downloader/)

This is only a Docker image that uses the spotDL project without any modification. The spotDL project _does not_ download songs from spotify, only the metadata and album cover. The script uses the song name to search it in YouTube, downloads the video and convert it to mp3 using ffmpeg.

## Key features

- It has Python, ffmpeg and spotdl installed and configured
- Can read multiple urls from a text file and download all files
- Generates mp3 file with all metadata and album cover

## How to use it

First, build the image `spotdl-sd-docker:latest`:

```sh
docker compose build image
```

Second, put the spotify tracks url into the file `./source/source.txt` (one per line)

Example:

```txt
https://open.spotify.com/track/79Dl8iYn0PFQG2wqDxPlQU
https://open.spotify.com/track/0y1QJc3SJVPKJ1OvFmFqe6
```

Third, run the container:

```sh
docker compose up download
```

The files will be downloaded to the `/export` directory.
