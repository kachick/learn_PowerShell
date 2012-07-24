$hash = @{}

$args | % {
  gc $_ | % {
    if ($_ -match '(\w+)') {
      if (! $hash[$matches[1]]) {
        $hash[$matches[1]] = 0
      }

      $hash[$matches[1]] += 1
    }
  }

  "# Words in '$($_)'"
  $hash
}
