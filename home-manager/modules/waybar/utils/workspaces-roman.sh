#!/usr/bin/env bash

to_roman() {
  local num=$1
  local roman=""
  local values=(1000 900 500 400 100 90 50 40 10 9 5 4 1)
  local numerals=("M" "CM" "D" "CD" "C" "XC" "L" "XL" "X" "IX" "V" "IV" "I")

  for (( i=0; i<${#values[@]}; i++ )); do
    while (( num >= ${values[i]} )); do
      roman+="${numerals[i]}"
      ((num -= ${values[i]}))
    done
  done
  echo "$roman"
}

# Границы
min_ws=1
max_ws=10

while true; do
  current=$(hyprctl monitors -j 2>/dev/null | jq -r '.[0].activeWorkspace.id // "1"')
  current=${current//\"/}
  if ! [[ "$current" =~ ^[0-9]+$ ]] || (( current < min_ws )); then
    current=$min_ws
  elif (( current > max_ws )); then
    current=$max_ws
  fi

  # Определяем тройку: всегда 3 элемента
  if (( current == min_ws )); then
    workspaces=($min_ws $((min_ws + 1)) $((min_ws + 2)))
  elif (( current == min_ws + 1 )); then
    workspaces=($min_ws $((min_ws + 1)) $((min_ws + 2)))
  elif (( current == max_ws )); then
    workspaces=$((max_ws - 2)) $((max_ws - 1)) $max_ws
  elif (( current == max_ws - 1 )); then
    workspaces=$((max_ws - 2)) $((max_ws - 1)) $max_ws
  else
    workspaces=$((current - 1)) $current $((current + 1))
  fi

  # Убедимся, что все в пределах [min_ws, max_ws]
  filtered=()
  for ws in $workspaces; do
    if (( ws >= min_ws && ws <= max_ws )); then
      filtered+=($ws)
    fi
  done

  # Генерируем JSON
  echo -n "["
  first=true
  for ws in "${filtered[@]}"; do
    [[ $first == true ]] && first=false || echo -n ","
    roman=$(to_roman "$ws")
    if [[ $ws == $current ]]; then
      echo -n "{\"name\":\"$ws\",\"class\":\"workspace\",\"icon\":\"$roman\",\"focused\":true}"
    else
      echo -n "{\"name\":\"$ws\",\"class\":\"workspace\",\"icon\":\"$roman\",\"focused\":false}"
    fi
  done
  echo "]"

  sleep 1
done