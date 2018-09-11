#!/bin/bash

walbg () {
  wal -n -i "$1" -a 85 &&
  feh --bg-fill "$(< "${HOME}/.cache/wal/wal")" --bg-fill "$(< "${HOME}/.cache/wal/wal")";
}

walbg $@
