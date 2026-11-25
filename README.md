# Seismic Unix Practice

Learning seismic processing with Seismic Unix (SU) on Ubuntu (WSL2).

## Week 1
- Set up Ubuntu on WSL2 and built Seismic Unix from source on Ubuntu 26.04
- Fixed build problems: disabled XDR, fixed `isfinite` in `sunan.c`, added `-D_GNU_SOURCE`
- Read trace headers with `sugethw`
- Applied bandpass filtering (`sufilter`) and gain (`sugain`, `tpow` and AGC)
- Scripted the flow in `week1/day4_flow.sh`

## Figures
Plots from the synthetic `suplane` dataset are in `week1/figures`.

## What I learned
- A narrower bandpass gives smoother, lower-resolution events with ringing
- `tpow` gain keeps relative amplitudes; AGC evens out amplitudes (good for structure, not for amplitude analysis)

## Next
Week 2: process a 2D line (bandpass, gain, deconvolution, stack)
