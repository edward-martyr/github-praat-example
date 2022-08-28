# GitHub (Actions) praat example

[![Run Praat](https://github.com/edward-martyr/github-praat-example/actions/workflows/run_praat.yml/badge.svg)](https://github.com/edward-martyr/github-praat-example/actions/workflows/run_praat.yml)

## Why use GitHub Actions?

[GitHub Actions](https://docs.github.com/en/actions) allows you to have a clean and stable environment to do phonetic analyses.
In a larger project, you might be using `R`, `Python`, `ffmpeg`, etc., in your pipeline, and GitHub Actions is great for managing versions, dependencies to obtain a stable result.

## What the example does

The example workflow, [`run_praat.yml`](https://github.com/edward-martyr/github-praat-example/actions/workflows/run_praat.yml), runs on ubuntu.
It first installs `ffmpeg` and `praat_barren` (a non-GUI version of praat) to the remote linux machine (and creates `praat` as an alias for `praat_barren`).

It downloads an [audio sample of [ɐ̞] found on Wikimedia](https://upload.wikimedia.org/wikipedia/commons/5/50/Open_central_unrounded_vowel.ogg), and converts it to a praat-compatible WAV file using `ffmpeg`.

Then it runs a praat script which analyses the F1 and F2 of the vowel, writing the output to `output.txt`, which is then uploaded to the artifacts of the workflow, to be downloaded just like how you would like to collect your results from GitHub Actions in a real project.

Note that non-GUI versions of praat might require you to run a script as follows

```bash
praat --run example.praat
```

rather than

```bash
praat example.praat
```

which is normally the case for GUI versions of praat which you probably have installed locally on your laptop.

(The version used in this example requires the former method.)
