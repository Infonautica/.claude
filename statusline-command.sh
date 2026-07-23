#!/bin/bash
input=$(cat)

model=$(echo "$input" | jq -r '.model.display_name // "unknown"')

used=$(echo "$input" | jq -r '.context_window.used_percentage // empty')
if [ -n "$used" ]; then
  ctx=$(printf "Ctx %.0f%%" "$used")
else
  ctx="Ctx --"
fi

cost=$(echo "$input" | jq -r '.cost.total_cost_usd // empty')
if [ -n "$cost" ]; then
  cost_str=$(printf "\$%.2f" "$cost")
else
  cost_str="\$--"
fi

printf "\033[2m%s | %s | %s\033[0m" "$model" "$ctx" "$cost_str"
